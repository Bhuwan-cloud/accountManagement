require "test_helper"

class NetworkingItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get networking_items_index_url
    assert_response :success
  end
end
