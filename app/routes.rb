class MyApp < Sinatra::Base

  get "/assets/*" do
    settings.sprockets.logger = env['rack.logger'] unless settings.production?
    env["PATH_INFO"].sub!("/assets", "")
    settings.sprockets.call(env)
  end

  get "/" do
    erb :index
  end

  get '/healthcheck' do
    200
  end
end
