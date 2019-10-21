class Rating < ApplicationRecord
  belongs_to :kombucha
  belongs_to :user

  validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to:5} 


  def to_h
    {
      "id": self.id,
      "username": self.user.name,
      "kombucha": self.kombucha.name,
      "rating": self.rating,
      "average_kombucha_rating": self.kombucha.average_rating
    }
  end 
end
