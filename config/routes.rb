Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "home#index"

  # namespace :api do
  #   resources :services
  # end
  #
  # namespace :admin do
  #   resources :addresses
  # end

end
