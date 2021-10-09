require "rails_helper"

RSpec.describe DiningVenuesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dining_venues").to route_to("dining_venues#index")
    end

    it "routes to #new" do
      expect(get: "/dining_venues/new").to route_to("dining_venues#new")
    end

    it "routes to #show" do
      expect(get: "/dining_venues/1").to route_to("dining_venues#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/dining_venues/1/edit").to route_to("dining_venues#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/dining_venues").to route_to("dining_venues#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/dining_venues/1").to route_to("dining_venues#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/dining_venues/1").to route_to("dining_venues#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/dining_venues/1").to route_to("dining_venues#destroy", id: "1")
    end
  end
end
