require 'rails_helper'

RSpec.describe TouringplansSync, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  #######
  context "when working with touringplans hotels," do
    sync = TouringplansSync.new(interest: "hotels", location: "Walt Disney World")

    it "supports the caching of all the entries" do
      expect(sync.cache_all_hotels.length).to eq(46)
    end

    it "caches an entry with a venue_permalink that is longer than 4" do
      expect(sync.cache_all_dining_venues.first.venue_permalink.to_s.length).to be > 4    
    end

  end

  #######
  context "when working with touringplans attractions" do
    sync = TouringplansSync.new(interest: "attractions", location: "parks")

    it "supports the caching of all the entries" do
      expect(sync.cache_all_attractions.length).to eq(165)
    end

    it "caches an entry with a name that is a string" do
      expect(sync.cache_all_attractions.first.name.class.to_s).to eq("String")      
    end
    
    it "caches an entry with a short_name that is a string" do
      expect(sync.cache_all_attractions.first.short_name.class.to_s).to eq("String")      
    end
    
    it "caches an entry with a permalink that is a string" do
      expect(sync.cache_all_attractions.first.permalink.class.to_s).to eq("String")      
    end

    it "caches an entry with a venue_permalink that is longer than 4" do
      expect(sync.cache_all_dining_venues.first.venue_permalink.to_s.length).to be > 4    
    end
    
  end

  #######
  context "when working with touringplans dining venues" do
    sync = TouringplansSync.new(interest: "dining", location: "parks")

    it "supports the caching of all the entries" do
      expect(sync.cache_all_dining_venues.length).to eq(87)
    end

    it "caches an entry with a name that is a string" do
      expect(sync.cache_all_dining_venues.first.name.class.to_s).to eq("String")      
    end
    
    it "caches an entry with a short_name that is a string" do
      expect(sync.cache_all_dining_venues.first.short_name.class.to_s).to eq("String")      
    end
    
    it "caches an entry with a permalink that is a string" do
      expect(sync.cache_all_dining_venues.first.permalink.class.to_s).to eq("String")      
    end
    
    it "caches an entry with a venue_permalink that is longer than 4" do
      expect(sync.cache_all_dining_venues.first.venue_permalink.to_s.length).to be > 4    
    end
    
  end  
end
