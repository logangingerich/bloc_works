require 'test/unit'
require 'rack/test'

class ApplicationTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    BlocWorks::Application.new
  end

  def call_test
    get "/"
    assert_equal("Hello Blocheads!", last_response.body)
  end

end
