class Fieldguide::AttractionsController < FieldguideController
  def index
    @attractions = Attraction.all
  end

  def show
  end
end
