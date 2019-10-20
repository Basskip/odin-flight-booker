class BookingsController < ApplicationController
    def new
        @passengers = []
        params[:booking][:passenger_count].to_i.times do
            @passengers << Passenger.new
        end
        @flight = Flight.find(params[:booking][:flight].to_i)
        @booking = Booking.new
    end

    def create
        booking = Booking.new(booking_params)
        if booking.save
            redirect_to booking
        else
            render 'new'
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email ])
    end
end
