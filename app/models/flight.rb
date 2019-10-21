class Flight < ApplicationRecord
  has_many :flight_line_item
  has_many :kombucha, through: :flight_line_item

  validates :name, uniqueness: true


  def to_h
    {
      "id": self.id,
      "name": self.name,
      "kombucha": self.kombucha.map(&:name)
    }
  end
end
