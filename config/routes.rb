Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  
  root to: "pages#home"

  get "/login" => "session#new"
  post "/login" => 'session#create'
  delete "/login" => "session#destroy"


  resources :users
  # get "users/:id" => "users#profile", as: "users/profile"
  get "/profile" => "users#profile"


  resources :lists

  resources :bars
  get "/bars/:id/favourite" => "bars#favourite", as: :favourite_bar
  get "/bars/:id/unfavourite" => "bars#unfavourite", as: :unfavourite_bar
  post "/bars/:id/comment" => "bars#comment", as: :comment_bar
  get "/bars/:id/cocktails/new" => "cocktails#new", as: :cocktail_bar
  # get "/bars/:id/menu" => "bars#menu", as: :menu_bar
  get "/search" => "bars#search", as: :search_bar

  resources :cocktails

  # this will add a cocktail to a specific list of favourite cocktails (the list ID is in the form data)
  post   "/cocktails/:id/favourite"           => "cocktails#favourite",   as: :favourite_cocktail
  delete "/cocktails/:id/favourite/:list_id"  => "cocktails#unfavourite", as: :unfavourite_cocktail

  resources :comments

end



# get 'pages/new'
# get 'pages/create'
# get 'pages/index'
# get 'pages/show'
# get 'pages/edit'
# get 'pages/update'
# get 'pages/destroy'
# get 'users/new'
# get 'users/create'
# get 'users/index'
# get 'users/show'
# get 'users/edit'
# get 'users/update'
# get 'users/destroy'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
