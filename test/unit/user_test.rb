require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_serialization
    5.times { User.create! }

    json = User.all

    serializer = json.active_model_serializer

    serializer.new(json).to_json
  end
end
