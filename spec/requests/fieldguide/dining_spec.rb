require 'rails_helper'

RSpec.describe "Fieldguide::Dinings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/fieldguide/dining/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/fieldguide/dining/show"
      expect(response).to have_http_status(:success)
    end
  end

end
