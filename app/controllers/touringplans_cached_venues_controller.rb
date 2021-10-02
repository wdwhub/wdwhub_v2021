class TouringplansCachedVenuesController < ApplicationController
  before_action :set_touringplans_cached_venue, only: %i[ show edit update destroy ]

  # GET /touringplans_cached_venues or /touringplans_cached_venues.json
  def index
    @touringplans_cached_venues = TouringplansCachedVenue.all
  end

  # GET /touringplans_cached_venues/1 or /touringplans_cached_venues/1.json
  def show
  end

  # GET /touringplans_cached_venues/new
  def new
    @touringplans_cached_venue = TouringplansCachedVenue.new
  end

  # GET /touringplans_cached_venues/1/edit
  def edit
  end

  # POST /touringplans_cached_venues or /touringplans_cached_venues.json
  def create
    @touringplans_cached_venue = TouringplansCachedVenue.new(touringplans_cached_venue_params)

    respond_to do |format|
      if @touringplans_cached_venue.save
        format.html { redirect_to @touringplans_cached_venue, notice: "Touringplans cached venue was successfully created." }
        format.json { render :show, status: :created, location: @touringplans_cached_venue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @touringplans_cached_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /touringplans_cached_venues/1 or /touringplans_cached_venues/1.json
  def update
    respond_to do |format|
      if @touringplans_cached_venue.update(touringplans_cached_venue_params)
        format.html { redirect_to @touringplans_cached_venue, notice: "Touringplans cached venue was successfully updated." }
        format.json { render :show, status: :ok, location: @touringplans_cached_venue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @touringplans_cached_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /touringplans_cached_venues/1 or /touringplans_cached_venues/1.json
  def destroy
    @touringplans_cached_venue.destroy
    respond_to do |format|
      format.html { redirect_to touringplans_cached_venues_url, notice: "Touringplans cached venue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_touringplans_cached_venue
      @touringplans_cached_venue = TouringplansCachedVenue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def touringplans_cached_venue_params
      params.require(:touringplans_cached_venue).permit(:name, :permalink)
    end
end
