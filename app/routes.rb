class App < Sinatra::Base
  # place any routes below...
  get "/assets/*" do
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
