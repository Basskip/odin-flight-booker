class FlightsController < ApplicationController

    def index
        @dates = Flight.all.order(:start).map { |f| [f.start_date_formatted, f.start.to_date] }.uniq
        if params[:search]
            @flights = Flight.where(origin_id: params[:search][:origin], destination_id: params[:search][:destination], start: params[:search][:start].to_date.all_day)
            @passenger_count = params[:search][:passenger_count]
        else
            @flights = Flight.all
        end
    end

end
