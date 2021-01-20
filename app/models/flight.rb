class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: :from_airport_id
  belongs_to :to_airport, class_name: "Airport", foreign_key: :to_airport_id

  def date_formatted
    self.datetime.strftime("%d/%m/%Y")
  end

  def day
    self.datetime.strftime("%d")
  end
  
  def month
    self.datetime.strftime("%m")
  end

  def year 
    self.datetime.strftime("Y")
  end
end
