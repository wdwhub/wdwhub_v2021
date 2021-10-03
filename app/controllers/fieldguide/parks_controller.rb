class Fieldguide::ParksController < FieldguideController
  def index
    @parks = Park.all
  end

  def show
  end
end
