class Api::RatingsController < ApiController
  skip_before_action :verify_authenticity_token

 
  def show
    user_id = params["user_id"].to_i
    @ratings = Rating.where(user_id: user_id)

    render json: @ratings.map(&:to_h), status: :ok
  end

  def create
    user_id = params["user_id"].to_i
    kombucha_id = params["kombucha_id"].to_i
    rating = params["rating"].to_i
    
    if valid_rating(rating)
      if Rating.where(user_id:user_id,kombucha_id:kombucha_id).exists?
        @rating = Rating.find_by(user_id: user_id, kombucha_id: kombucha_id)
      else 
        @rating = Rating.create(
          user_id: user_id,
          kombucha_id:kombucha_id,
          rating: rating,
        )
      end

      render json: @rating.to_h, status: :ok
    else
      render json: {errors: "Invalid rating"}, status: :error
    end 
  end 

  def update
    user_id = params["user_id"].to_i
    kombucha_id = params["kombucha_id"].to_i
    rating = params["rating"].to_i
    
    if valid_rating(rating)

      @rating = Rating.find_by(user_id:user_id,kombucha_id:kombucha_id)
      
      if @rating.present?
        @rating.rating = rating
        @rating.save
      else
        render json: { errors: "Rating does not exist " }, status: :not_found
      end

      render json: @rating.to_h, status: :ok
    else 
      render json: {errors: "Invalid rating"}, status: :error
    end 
  end 

  def valid_rating(rating)
    if rating >= 1  && rating <= 5
      true
    else 
      false
    end 
  end 
end 