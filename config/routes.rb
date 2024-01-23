Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/home", to: "home#index"
  get  "/home/new", to: "home#new"
  post "/home", to: "home#create"
  get "home/:id/edit", to: "home#edit"
  put "home/:id", to: "home#update"
  get "home/:id" , to: "home#show"
  delete "home/:id", to: "home#destroy"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
