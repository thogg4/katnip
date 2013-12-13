require File.expand_path('../boot', __FILE__)

# GZIP the stuff
use Rack::Deflater

map '/' do
  run Katnip
end
