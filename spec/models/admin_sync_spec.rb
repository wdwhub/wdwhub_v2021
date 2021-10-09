require 'rails_helper'

RSpec.describe AdminSync, type: :model do
  sync = AdminSync.new

  it "supports updating the Attraction model" do
    # ensure that records reside in Cached::TouringplansAttraction
    tp_sync                 = TouringplansSync.new(interest: "attractions", location: "parks")
    tp_cached_attractions   = tp_sync.cache_all_attractions

    # Cached::TouringplansAttraction.all.length
      expect(sync.update_attractions.length).to eq(Cached::TouringplansAttraction.all.length)    
  end
  
  context "when updating the DiningVenue model" do
      # ensure that records reside in Cached::TouringplansAttraction
      tp_sync                   = TouringplansSync.new(interest: "dining", location: "parks")
      tp_cached_dining_venues   = tp_sync.cache_all_dining_venues
      all_dining_venues         = sync.update_dining_venues

      tp_dining_venue01   = Cached::TouringplansDiningVenue.find_by(permalink: "rosies-all-american-cafe")
      dining_venue01      = DiningVenue.find_by(permalink: "rosies-all-american-cafe")

    it "creates the same number of total DiningVenue records as Cached::TouringplansDiningVenue" do
      expect(all_dining_venues.length).to eq(Cached::TouringplansDiningVenue.all.length)    
    end

    it "updates a DiningVenue record with the same name" do
        expect(dining_venue01.name).to  eq(tp_dining_venue01.name)
    end

    it "updates a DiningVenue record with the same name" do
        expect(dining_venue01.short_name).to  eq(tp_dining_venue01.short_name)
    end
  end

  context "when updating the Hotel model" do
      # ensure that records reside in Cached::TouringplansAttraction
      tp_sync           = TouringplansSync.new(interest: "hotels", location: "Walt Disney World")
      tp_cached_hotels  = tp_sync.cache_all_hotels
      all_hotels        = sync.update_hotels

      tp_hotel01   = Cached::TouringplansHotel.find_by(permalink: "fort-wilderness-campsites")
      hotel01      = Hotel.find_by(permalink: "fort-wilderness-campsites")

    it "creates the same number of total Hotel records as Cached::TouringplansHotel" do
      expect(all_hotels.length).to eq(Cached::TouringplansHotel.all.length)    
    end

    it "updates a Hotel record with the same name" do
        expect(tp_hotel01.name).to  eq(hotel01.name)
    end

    it "updates a Hotel record with the same name" do
        expect(tp_hotel01.short_name).to  eq(hotel01.short_name)
    end
  end
end
