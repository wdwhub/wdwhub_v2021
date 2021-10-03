class Fieldguide::HotelsController < FieldguideController
  def index
    @hotels = Hotel.all
  end

  def show
  end
end
