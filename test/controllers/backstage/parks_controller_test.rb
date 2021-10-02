require "test_helper"

class Backstage::ParksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backstage_parks_index_url
    assert_response :success
  end
end
