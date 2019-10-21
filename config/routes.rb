# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace "api", module: :api do
    resources :kombuchas, only: [:index, :show, :create, :update]

    get 'ratings/:user_id' => 'ratings#show'
    post 'ratings' => 'ratings#create'
    post 'update_ratings' => 'ratings#update'

  end
end
