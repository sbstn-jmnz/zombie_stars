Rails.application.routes.draw do
  resources :ratings, only: [:create]
  resources :zombies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
