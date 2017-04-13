require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get next" do
    get game_next_url
    assert_response :success
  end

end
