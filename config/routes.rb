# WHERE WE DEFINE ROUTES IN APP

Rails.application.routes.draw do
  # GET /about
  get "about-us", to: "about#index", as: :about
  
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout",  to: "sessions#destroy"
  
  root to: "main#index"
  # get "/", to: "main#index"
  # Above root route could be either
  

end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html