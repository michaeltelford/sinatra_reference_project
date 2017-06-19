require 'sinatra/base'
require 'sprockets'
require 'uglifier'
require 'sass'
require 'coffee-script'
require 'execjs'
require 'erb'

class MyApp < Sinatra::Base
  # place any initialisation/configuration code below...
  require 'byebug' unless production?

  configure :development do
    require "sinatra/reloader"
    register Sinatra::Reloader
  end

  configure :production, :development do
    enable :logging
  end

  configure :production, :development, :test do
    set :sprockets, Sprockets::Environment.new(root)

    sprockets.append_path "assets/stylesheets"
    sprockets.append_path "assets/javascripts"
    sprockets.append_path "assets/images"

    sprockets.js_compressor  = :uglify
    sprockets.css_compressor = :scss
  end
end

require_relative 'routes'
