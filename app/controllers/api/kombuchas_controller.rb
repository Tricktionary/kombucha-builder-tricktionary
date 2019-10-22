# frozen_string_literal: true

class Api::KombuchasController < ApiController
  before_action :authenticate_user!
  before_action :set_kombucha, only: [:show, :update]

  def index
    fizziness = params["fizziness"]
    caffeine_free = params["caffeine_free"]
    vegan = params["vegan"]

    @kombuchas = Kombucha.all

    if fizziness.present?
      @kombuchas = @kombuchas.where(fizziness_level: fizziness)
    end

    if caffeine_free.present?
      caffeine_free_kombuchas = []
      @kombuchas.each do |kombucha|
        if kombucha.caffeine_free == caffeine_free.to_bool
          caffeine_free_kombuchas.append(kombucha)
        end
      end
      @kombuchas = caffeine_free_kombuchas
    end

    if vegan.present?
      vegan_kombuchas = []
      @kombuchas.each do |kombucha|
        if kombucha.vegan == vegan.to_bool
          vegan_kombuchas.append(kombucha)
        end
      end
      @kombuchas = vegan_kombuchas
    end

    render json: @kombuchas.map(&:to_h), status: :ok
  end

  def show
    render json: @kombucha.to_h
  end

  def create
    @kombucha = Kombucha.new(kombucha_params)

    if @kombucha.save
      render json: @kombucha.to_h
    else
      render json: { errors: @kombucha.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @kombucha.update(kombucha_params)
      render json: @kombucha.to_h
    else
      render json: { errors: @kombucha.errors }, status: :unprocessable_entity
    end
  end

  private
    def set_kombucha
      @kombucha = Kombucha.find(params[:id])
    end

    def kombucha_params
      params.require(:kombucha).permit(:name, :fizziness_level)
    end
end
