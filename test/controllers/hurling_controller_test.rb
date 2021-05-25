require 'test_helper'

class HurlingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hurling_index_url
    assert_response :success
  end

end
