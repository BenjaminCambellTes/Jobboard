Rails.application.routes.draw do
  resources :jobs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "new-job", to: "sessions#new"
  post "new-job", to: "sessions#create"

  get "jobs", to: "jobs#index"

  get "about-us", to: "about#index"

  # Defines the root path route ("/")
   root to: "main#index"
end
