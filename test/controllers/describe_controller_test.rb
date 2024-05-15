require "test_helper"

class DescriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get descriptions_index_path
    assert_response :success
  end
end
