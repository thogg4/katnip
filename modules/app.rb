class SplashCycle < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/javascripts/*.coffee' do |script_name|
    coffee :"/javascripts/#{script_name}", :bare => true
  end
end
