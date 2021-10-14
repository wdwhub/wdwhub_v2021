require "test_helper"

class Backstage::AttractionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backstage_attractions_index_url
    assert_response :success
  end
end
