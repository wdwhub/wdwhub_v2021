class AdminSync
    # updates attractions, hotels, and dining venues

    def update_attractions
        attractions = Cached::TouringplansAttraction.all
        attractions.each do |attraction|
            attraction = Attraction.find_or_create_by(permalink: attraction.permalink)
            attraction.update!(name: attraction.name, short_name: attraction.short_name)
        end
        Attraction.all
        
    end

    def update_dining_venues
        cached_dining_venues = Cached::TouringplansDiningVenue.all
        cached_dining_venues.each do |cached_dining_venue|
            dining_venue = DiningVenue.find_or_create_by(permalink: cached_dining_venue.permalink)
            dining_venue.update!(name: cached_dining_venue.name, short_name: cached_dining_venue.short_name)
        end
        DiningVenue.all
        
    end

    def update_hotels
        cached_hotels   = Cached::TouringplansHotel.all
        cached_hotels.each do |cached_hotel|
            hotel = Hotel.find_or_create_by(permalink: cached_hotel.permalink)
            hotel.update!(name: cached_hotel.name, short_name: cached_hotel.short_name)
        end
        Hotel.all
    end
end
