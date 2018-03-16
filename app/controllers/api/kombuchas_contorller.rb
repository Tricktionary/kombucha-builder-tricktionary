class Api::KombuchaController < ApiController
  def index
    @kombuchas = Kombucha.all
    render json: @kombuchas.map(&:to_h), status: :success
  end

  def show
    @kombucha = Kombucha.find(params[:id])
    render json: @kombucha.to_h
  end

  def create
    @kombucha = Kombucha.create(kombucha_params)
    render json: @kombucha.to_h
  end

  def update
    @kombucha = Kombucha.find(params[:id])
    @kombucha.update(kombucha_params)

    render json: @kombucha.to_h
  end

  private

    def kombucha_params
      params.require(:kombucha).permit(:name, :brand, :fizziness_level)
    end
end
