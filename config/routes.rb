Rails.application.routes.draw do

  resources :dashboard, only: [:index, :show, :create] do
    resources :notes
  end

  namespace :api do
    resources :tweets
    resources :state_temperatures
    resources :country_temperatures
    resources :states
    resources :countries
    resources :tweets_stats
  end
end
