require 'test_helper'

class SerializationFailTest < ActionDispatch::IntegrationTest
  def test_ams
    5.times { User.create! }

    get '/users', :format => 'json'

    assert_response :success
  end
end
