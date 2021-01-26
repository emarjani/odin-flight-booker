class PassengerMailer < ApplicationMailer

    def self.send_confirmed_booking(booking)
        booking.passengers.each do |passenger|
            confirmed_booking(passenger, booking).deliver_now
        end
    end

    def confirmed_booking(passenger, booking)
        @passenger = passenger
        @url = booking_url(booking.id)
        mail(to: passenger.email, subject: "Confirmed booking")
    end
end
