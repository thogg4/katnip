# spec/spec_helper.rb
require 'rack/test'

require File.expand_path '../../boot', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() described_class end
end

# For RSpec 2.x
RSpec.configure { |c| c.include RSpecMixin }
