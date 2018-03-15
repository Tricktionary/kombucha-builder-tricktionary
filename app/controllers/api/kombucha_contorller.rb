class KombuchaController < ApiController
  def index
    @kombuchas = Kombucha.all
    render json: @kombuchas.map(&:to_h), status: :success
  end

  def show
    @kombucha = Kombucha.find(params[:id])
    render json: @kombucha.to_h
  end

  def create
    @kombucha = Kombucha.create(params[:Kombucha])
    render json: @kombucha.to_h
  end

  def update
    @kombucha = Kombucha.find(params[:id])
    @kombucha.update(params[:kombucha])

    render json: @kombucha.to_h
  end
end
