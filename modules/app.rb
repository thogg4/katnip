class SplashCycle < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/scripts/*.js' do |script_name|
    coffee :"/coffee/#{script_name}", :bare => true
  end
end
