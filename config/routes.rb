Rails.application.routes.draw do
  root to: 'animals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animals do
    resources :sightings
  end
end
