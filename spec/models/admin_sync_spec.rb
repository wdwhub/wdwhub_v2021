require 'rails_helper'

RSpec.describe AdminSync, type: :model do
  sync = AdminSync.new

  context "when updating the Attraction model" do
      # ensure that records reside in Cached::TouringplansAttraction
      all_attractions   = sync.update_attractions

      tp_attraction01   = Cached::TouringplansAttraction.find_by(permalink: "astro-orbiter")
      attraction01      = Attraction.find_by(permalink: "astro-orbiter")

    it "creates the same number of total Attraction records as Cached::TouringplansAttraction" do
      expect(all_attractions.length).to eq(Cached::TouringplansAttraction.all.length)    
    end

    it "updates an  Attraction record with the same name" do
        expect(attraction01.name).to  eq(tp_attraction01.name)
        # expect(attraction01.name).to  eq("soemthin")
    end

    it "updates an  Attraction record with the same name" do
        expect(attraction01.name).to  eq(tp_attraction01.name)
        # expect(attraction01.name).to  eq("soemthin")
    end

    it "updates an  Attraction record with the same short_name" do
        expect(attraction01.short_name).to  eq(tp_attraction01.short_name)
        # expect(attraction01.short_name).to  eq("soemthin")
    end

    it "updates an  Attraction record with the same venue_permalink" do
        expect(attraction01.venue_permalink).to  eq(tp_attraction01.venue_permalink)
        # expect(attraction01.venue_permalink).to  eq("soemthin")
    end
  end

  context "when updating the DiningVenue model" do
      # ensure that records reside in Cached::TouringplansAttraction
      all_dining_venues         = sync.update_dining_venues

      tp_dining_venue01   = Cached::TouringplansDiningVenue.find_by(permalink: "rosies-all-american-cafe")
      dining_venue01      = DiningVenue.find_by(permalink: "rosies-all-american-cafe")

    it "creates the same number of total DiningVenue records as Cached::TouringplansDiningVenue" do
      expect(all_dining_venues.length).to eq(Cached::TouringplansDiningVenue.all.length)    
    end

    it "updates a DiningVenue record with the same name" do
        expect(dining_venue01.name).to  eq(tp_dining_venue01.name)
    end

    it "updates a DiningVenue record with the same short_name" do
        expect(dining_venue01.short_name).to  eq(tp_dining_venue01.short_name)
    end

    it "updates a DiningVenue record with the venue_permalink" do
        expect(dining_venue01.venue_permalink).to  eq(tp_dining_venue01.venue_permalink)
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

    it "updates a Hotel record with the venue_permalink" do
        expect(hotel01.venue_permalink).to  eq(tp_hotel01.venue_permalink)
    end    
  end
end
