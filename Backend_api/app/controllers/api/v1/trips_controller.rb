class Api::V1::TripsController < ApplicationController
  before_action :set_trip, only: %i[ show update destroy ]

  # GET /trips
  def index
    @trips = Trip.all

    #render json: @trips, include: [:activities]
    render json: TripSerializer.new(@trips, options)
  end

  # GET /trips/id number
  def show
    #render json: @trip
    render json: TripSerializer.new(@trips, options)
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
      render json: TripSerializer.new(@trip, options)
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

    def options
      @options ||= {include: %i[activities]}
    end
end
