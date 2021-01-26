class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight_id])
    
        count = params[:num_tickets].to_i
        count.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.new(booking_params)
        if @booking.save
            redirect_to @booking
        else
            @flight = Flight.find(params["booking"]["flight_id"])
            render :new
        end  
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
    end
end
