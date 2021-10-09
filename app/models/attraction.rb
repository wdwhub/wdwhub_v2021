class Attraction < ApplicationRecord
    def self.update_all
        # updates attractions from various sources
        AdminSync.new.update_attractions
    end
end
