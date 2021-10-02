require "test_helper"

class Backstage::HotelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backstage_hotels_index_url
    assert_response :success
  end
end
