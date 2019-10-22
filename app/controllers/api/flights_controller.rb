# frozen_string_literal: true

class Api::FlightsController < ApiController
  before_action :authenticate_user!
 
  def create
    name = params['name']

    if params['kombucha_id'].present?
      kombucha_id = params['kombucha_id'].to_i
    end 
    if params['rating'].present?
      rating = params['rating'].to_f
    end 
    
    # Check Valid Flight Name
    if Flight.where(name: name).exists?
      render json: { errors: "Flight Already Exist" }, status: :error
      return
    end
    @flight = Flight.create(name: name)

    # Add Specific Kombucha
    flight_length = 4
    tea_str = "tea"
    tea = Ingredient.where("name like ?", "%#{tea_str}%").to_a
    
    if kombucha_id.present?
      current_kombucha = Kombucha.find(kombucha_id)
      if !current_kombucha.present?
        render json: { errors: "Kombucha ID does not exist" }, status: :error
        return
      else 
        flight_length = 3
        FlightLineItem.create(kombucha: current_kombucha, flight: @flight)
        chosen_tea = current_kombucha.base_ingredient
        tea.delete(chosen_tea)
      end
    end

    for i in 1..flight_length do
      current_tea = tea[rand(tea.length)]
      kombuchas = Kombucha.joins(:ingredients, :recipe_items).where(ingredients: { id: current_tea.id }).to_a
      if rating.present?
        kombuchas = kombucha_rating(rating, kombuchas)
      end 
      current_kombucha = kombuchas[rand(kombuchas.length)]
      FlightLineItem.create(kombucha: current_kombucha, flight: @flight)
      tea.delete(current_tea)
    end
    render json: @flight.to_h, status: :ok
  end

  def kombucha_rating(rating, kombuchas)
    temp_kombutchas = []
    kombuchas.each do |kombucha|
      if kombucha.average_rating >= rating
        temp_kombutchas.append(kombucha)
      end 
    end
    temp_kombutchas
  end 
end
