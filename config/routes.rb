Rails.application.routes.draw do
  resources :tips
  resources :beacons
  resources :tippees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
