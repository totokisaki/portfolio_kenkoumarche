require "test_helper"

class CheckupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get checkup_index_url
    assert_response :success
  end
end
