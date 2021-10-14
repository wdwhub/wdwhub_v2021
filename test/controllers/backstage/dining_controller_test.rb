require "test_helper"

class Backstage::DiningControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backstage_dining_index_url
    assert_response :success
  end
end
