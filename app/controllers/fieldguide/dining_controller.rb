class Fieldguide::DiningController < FieldguideController
  def index
    @dining_venues = DiningVenue.all
  end

  def show
    @dining_venue = DiningVenue.find(params[:id])
  end
end
