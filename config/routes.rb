# WHERE WE DEFINE ROUTES IN APP

Rails.application.routes.draw do
  # GET /about
  get "about", to: "about#index"
  
  root to: "main#index"
  # get "/", to: "main#index"
  # Above root route could be either
  
  

end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html