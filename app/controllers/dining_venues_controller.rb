class DiningVenuesController < ApplicationController
  before_action :set_dining_venue, only: %i[ show edit update destroy ]

  # GET /dining_venues or /dining_venues.json
  def index
    @dining_venues = DiningVenue.all
  end

  # GET /dining_venues/1 or /dining_venues/1.json
  def show
  end

  # GET /dining_venues/new
  def new
    @dining_venue = DiningVenue.new
  end

  # GET /dining_venues/1/edit
  def edit
  end

  # POST /dining_venues or /dining_venues.json
  def create
    @dining_venue = DiningVenue.new(dining_venue_params)

    respond_to do |format|
      if @dining_venue.save
        format.html { redirect_to @dining_venue, notice: "Dining venue was successfully created." }
        format.json { render :show, status: :created, location: @dining_venue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dining_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dining_venues/1 or /dining_venues/1.json
  def update
    respond_to do |format|
      if @dining_venue.update(dining_venue_params)
        format.html { redirect_to @dining_venue, notice: "Dining venue was successfully updated." }
        format.json { render :show, status: :ok, location: @dining_venue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dining_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dining_venues/1 or /dining_venues/1.json
  def destroy
    @dining_venue.destroy
    respond_to do |format|
      format.html { redirect_to dining_venues_url, notice: "Dining venue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dining_venue
      @dining_venue = DiningVenue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dining_venue_params
      params.require(:dining_venue).permit(:name, :short_name, :permalink)
    end
end
