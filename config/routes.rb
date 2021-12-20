Rails.application.routes.draw do

  resources :dashboard do
    resources :notes
  end

  namespace :api do
    resources :tweets
    resources :state_temperatures
    resources :country_temperatures
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
