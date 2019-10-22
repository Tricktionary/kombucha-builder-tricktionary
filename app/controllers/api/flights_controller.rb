# frozen_string_literal: true

class Api::FlightsController < ApiController
  skip_before_action :verify_authenticity_token

  def create
    name = params['name']

    if Flight.where(name: name).exists?
      render json: { errors: "Flight Already Exist" }, status: :error
    else

      tea_str = "tea"
      tea = Ingredient.where("name like ?", "%#{tea_str}%").to_a

      @flight = Flight.create(name: name)

      for i in 1..4 do
        current_tea = tea[rand(tea.length)]
        kombucha = Kombucha.joins(:ingredients, :recipe_items).where(ingredients: { id: current_tea.id })
        current_kombucha = kombucha[rand(kombucha.length)]
        FlightLineItem.create(kombucha: current_kombucha, flight: @flight)
        tea.delete(current_tea)
      end
      render json: @flight.to_h, status: :ok
    end
  end
end
