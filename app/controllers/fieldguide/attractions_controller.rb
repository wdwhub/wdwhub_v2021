class Fieldguide::AttractionsController < FieldguideController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end
end
