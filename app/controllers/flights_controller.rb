class FlightsController < ApplicationController
    def index
        @flights = Flight.all

        @from_airport = Flight.all.map{|u| [u.from_airport.code, u.from_airport_id]}
        @to_airport = Flight.all.map{|u| [u.to_airport.code, u.to_airport_id]}
        
        @datetime = Flight.all.order("datetime ASC").map{|u| [u.date_formatted, u.datetime]}
        @num_tickets = [[1,1],[2,2],[3,3],[4,4]]
    end
end

#strftime("%d/%m/%Y")
# @day = Flight.all.map{|u| [u.day, u.datetime]}