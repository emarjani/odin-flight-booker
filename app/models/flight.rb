class Flight < ApplicationRecord
  has_many :bookings
  has_many :passengers, through: :bookings

  belongs_to :from_airport, class_name: "Airport", foreign_key: :from_airport_id
  belongs_to :to_airport, class_name: "Airport", foreign_key: :to_airport_id

  scope :check_date, ->(date) {where("DATE(datetime) = ?", date)}

  def date_dmy
    self.datetime.strftime("%d/%m/%Y")
  end

  def date_ymd
    self.datetime.strftime("%Y-%m-%d")
  end

  def time
    self.datetime.strftime("%H:%M")
  end

end
