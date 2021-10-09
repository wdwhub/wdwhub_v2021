class Fieldguide::DiningController < FieldguideController
  def index
    @dining_venues = DiningVenue.all
  end

  def show
  end
end
