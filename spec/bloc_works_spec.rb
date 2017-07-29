require 'test/unit'
require 'rack/test'

class ApplicationTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    BlocWorks::Application.new
  end

  def welcome_test
    get "/books/welcome"
    assert last_response.ok?
  end
end
