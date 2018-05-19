Rails.application.routes.draw do

  root to: "pages#home"

  get "/login" => "session#new"
  post "/login" => 'session#create'
  delete "/login" => "session#destroy"

  resources :users

  get "/profile" => "user#profile"
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
