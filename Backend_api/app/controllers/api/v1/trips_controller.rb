class Api::V1::TripsController < ApplicationController
  before_action :set_trip, only: %i[ show update destroy ]

  # GET /trips
  def index
    @trips = Trip.all

    #render json: @trips, include: [:activities]
    #render json: TripSerializer.new(@trips, options_all)
    render json: @trips, each_serializer: PartialTripSerializer 
  end

  # GET /trips/id number
  def show
    #render json: @trip
    #render json: TripSerializer.new(@trip, options_specific)
    render json: @trip, each_serializer: TripSerializer
  end

  # POST /trips
  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      #render json: @trip, status: :created, location: @trip
      render json: TripSerializer.new(@trips)
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  def update
    if @trip.update(trip_params)
      #render json: @trip
      render json: TripSerializer.new(@trip, options_specific_trip)
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  def destroy
    @trip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_params
      params.require(:trip).permit(:name, :location, :date, :description)
    end

    # def options
    #   @options_all_trips ||={include: %i[activities]}
    #   @options_specific_trip ||= {include: %i[activities images itinerary]}
    # end

end
