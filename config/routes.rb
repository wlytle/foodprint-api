Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :ingredients
  resources :user_recipes
  resources :recipes
  resources :users
  resources :sessions, except: [:delete]
  delete "/sessions", to: "sessions#destroy"
  get "/recipe_ingredient/types/:id", to: "recipe_ingredients#match_types"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
