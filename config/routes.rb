Rails.application.routes.draw do
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "events", to: "events#index"
  get "event",  to: "events#show"
  post "events", to: "events#create"
  put "events", to: "events#update"
  delete "events", to: "events#destroy"
  post "my_created_events", to: "events#my_created_events"

  post "my_events", to: "events#my_events"

end
