class AdminSync
    # updates attractions, hotels, and dining venues

    def update_attractions
        # updates attractions from various sources
        tp_sync                 = TouringplansSync.new(interest: "attractions", location: "parks")
        tp_cached_attractions   = tp_sync.cache_all_attractions

        cached_attractions = Cached::TouringplansAttraction.all
        cached_attractions.each do |cached_attraction|
            attraction = Attraction.find_or_create_by(permalink: cached_attraction.permalink)
            attraction.update!( name: cached_attraction.name, 
                                short_name: cached_attraction.short_name,
                                venue_permalink: cached_attraction.venue_permalink
                              )
        end
        Attraction.all
        
    end

    def update_dining_venues
        tp_sync                   = TouringplansSync.new(interest: "dining", location: "parks")
        tp_cached_dining_venues   = tp_sync.cache_all_dining_venues

        cached_dining_venues = Cached::TouringplansDiningVenue.all
        cached_dining_venues.each do |cached_dining_venue|
            dining_venue = DiningVenue.find_or_create_by(permalink: cached_dining_venue.permalink)
            dining_venue.update!(name: cached_dining_venue.name, 
                                    short_name: cached_dining_venue.short_name,
                                    venue_permalink: cached_dining_venue.venue_permalink
                                )
        end
        DiningVenue.all
        
    end

    def update_hotels
        cached_hotels   = Cached::TouringplansHotel.all
        cached_hotels.each do |cached_hotel|
            hotel = Hotel.find_or_create_by(permalink: cached_hotel.permalink)
            hotel.update!(name: cached_hotel.name, 
                            short_name: cached_hotel.short_name,
                            venue_permalink: cached_hotel.venue_permalink
                        )
        end
        Hotel.all
    end
end
