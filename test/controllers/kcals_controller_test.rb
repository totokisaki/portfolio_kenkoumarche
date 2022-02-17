require "test_helper"

class KcalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kcals_index_url
    assert_response :success
  end
end
