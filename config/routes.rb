Rails.application.routes.draw do
  root to: "home#index"

  namespace :api do
    resources :services
  end

  namespace :admin do
    resources :addresses
  end
  
end
