class Katnip < Sinatra::Base
  get '/' do
    slim :index
  end

  get '/javascripts/*.coffee' do |script_name|
    coffee :"/javascripts/#{script_name}", :bare => true
  end
end
