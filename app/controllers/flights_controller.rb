class FlightsController < ApplicationController
    def index

        @from_airport = Flight.all.map{|u| [u.from_airport.code, u.from_airport_id]}.uniq
        @to_airport = Flight.all.map{|u| [u.to_airport.code, u.to_airport_id]}.uniq
        @date = Flight.all.order("datetime ASC").map{|u| [u.date_dmy, u.date_ymd]}.uniq
        @num_tickets = [[1,1],[2,2],[3,3],[4,4]]
    end
end

