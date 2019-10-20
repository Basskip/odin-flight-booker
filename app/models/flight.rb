class Flight < ApplicationRecord
    belongs_to :origin, class_name: "Airport"
    belongs_to :destination, class_name: "Airport"
    has_many :bookings
    has_many :booking_passengers, through: :bookings
    has_many :passengers, through: :booking_passengers

    def start_date_formatted
        start.strftime("%d/%m/%Y")
    end
end
