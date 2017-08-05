require 'dotenv'
require 'thin'
require 'sinatra/base'
require 'slim'
require 'sprockets'
require 'sinatra/sprockets-helpers'
require 'uglifier'
require 'sass'
require 'coffee-script'
require 'execjs'
require_relative 'helpers'

# place any initialisation/configuration code below...
class App < Sinatra::Base
  Dotenv.load # load .env file into ENV
  require 'byebug' unless production?

  configure :development do
    require "sinatra/reloader"
    register Sinatra::Reloader
  end

  configure :development, :production do
    enable :logging
  end

  configure :development, :production, :test do
    register Sinatra::Sprockets::Helpers

    set :server, 'thin'
    set :sprockets, Sprockets::Environment.new(root)
    set :assets_dir, 'assets'
    set :assets_prefix, Proc.new { "/#{assets_dir}" }
    set :digest_assets, production?

    sprockets.append_path File.join(root, assets_dir, 'stylesheets')
    sprockets.append_path File.join(root, assets_dir, 'javascripts')
    sprockets.append_path File.join(root, assets_dir, 'images')

    sprockets.js_compressor  = :uglify
    sprockets.css_compressor = :scss

    configure_sprockets_helpers do |config|
      # Force debug mode when in development, which sets:
      # expand = true, digest = false, manifest = false
      config.debug = development?
    end
  end

  helpers Helpers
end

require_relative 'routes'
