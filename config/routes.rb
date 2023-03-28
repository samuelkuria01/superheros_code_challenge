Rails.application.routes.draw do
  resources :hero_powers

  resources :heros, only: [:index, :show, :create] do
  resources :powers, only: [:index, :show, :update]
  end

  resources :powers, only: [:index, :show, :create, :update, :destroy]

end
