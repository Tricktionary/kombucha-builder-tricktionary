class FlightLineItem < ApplicationRecord
  belongs_to :flight
  belongs_to :kombucha
end
