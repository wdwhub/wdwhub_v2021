class Fieldguide::DiningController < FieldguideController
  def index
    @eateries = Eatery.all
  end

  def show
  end
end
