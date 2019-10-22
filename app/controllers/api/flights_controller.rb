# frozen_string_literal: true

class Api::FlightsController < ApiController
  skip_before_action :verify_authenticity_token

  def create
    name = params['name']
    kombucha_id = params['kombucha_id'].to_i
    rating = params['rating'].to_f
    
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
      kombucha = Kombucha.joins(:ingredients, :recipe_items).where(ingredients: { id: current_tea.id })
      current_kombucha = kombucha[rand(kombucha.length)]
      FlightLineItem.create(kombucha: current_kombucha, flight: @flight)
      tea.delete(current_tea)
    end
    render json: @flight.to_h, status: :ok
  
  end
end
