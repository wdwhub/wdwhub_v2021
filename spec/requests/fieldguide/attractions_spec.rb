require 'rails_helper'

RSpec.describe "Fieldguide::Attractions", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/fieldguide/attractions/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/fieldguide/attractions/show"
      expect(response).to have_http_status(:success)
    end
  end

end
