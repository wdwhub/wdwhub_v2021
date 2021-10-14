
class TouringplansSync
    attr_reader :interest, :location

    def initialize(interest: "attractions", location:"Walt Disney World", resource: "Touringplans")
        @interest = interest
        @location = location
    end

    def cache_all_hotels
        hotels = Touringplans.list(interest, location)
        hotels.each do |hotel|
            cached_hotel = Cached::TouringplansHotel.find_or_create_by(permalink: hotel.permalink)
            cached_hotel.update!(name: hotel.name, short_name: hotel.sort_name, venue_permalink: hotel.venue_permalink)
        end
        cached_hotels = Cached::TouringplansHotel.all
    end

    def cache_all_attractions
        # to be tested
        attractions = Touringplans.list_all("attractions")
        attractions.each do |attraction|
            cached_attraction = Cached::TouringplansAttraction.find_or_create_by(permalink: attraction.permalink)
            cached_attraction.update!(name: attraction.name, short_name: attraction.short_name, venue_permalink: attraction.venue_permalink)
        end
        Cached::TouringplansAttraction.all
    end

    def cache_all_dining_venues
        # to be tested
        # *currently only for parks
        venues = Touringplans.list_all(interest)
        venues.each do |venue|
            cached_venue = Cached::TouringplansDiningVenue.find_or_create_by(permalink: venue.permalink)
            cached_venue.update!(name: venue.name, short_name: venue.short_name, venue_permalink: venue.venue_permalink)
        end
        Cached::TouringplansDiningVenue.all
    end

    def cache_hotel(permalink)
        
    end

    def cache_attraction(permalink)
        
    end
    def cache_dining_venue(permalink)
        
    end
    
    
end
