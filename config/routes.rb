Rails.application.routes.draw do
  resources :restaurants do
    collection do # For All the restaurant class
      get :top
    end
    member do # For a specific instance of restaurant
      get :chef
    end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
