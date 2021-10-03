require 'rails_helper'

RSpec.describe "Fieldguide::Parks", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/fieldguide/parks/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/fieldguide/parks/show"
      expect(response).to have_http_status(:success)
    end
  end

end
