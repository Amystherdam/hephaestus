require "test_helper"

class DescribeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get describe_index_url
    assert_response :success
  end
end
