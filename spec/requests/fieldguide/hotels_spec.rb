require 'rails_helper'

RSpec.describe "Fieldguide::Hotels", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/fieldguide/hotels/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/fieldguide/hotels/show"
      expect(response).to have_http_status(:success)
    end
  end

end
