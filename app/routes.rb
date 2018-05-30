# App routes/controllers.
class App < Sinatra::Base
  get '/assets/*' do
    env['PATH_INFO'].sub!('/assets', '')
    settings.sprockets.call(env)
  end

  get '/' do
    slim :index
  end

  get '/healthcheck' do
    200
  end
end
