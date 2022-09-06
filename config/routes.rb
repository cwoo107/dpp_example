Rails.application.routes.draw do
  root 'tickets#index'
  resources :positive_responses
  resources :tickets
  resources :webhooks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
