Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# A user can see all the lists
 # get 'lists', to: 'lists#index'
# A user can see the details of a given list and its name
# GET "lists/42"
# get '/lists/:id', to: 'lists#show'
# A user can create a new list
# GET "lists/new"
# POST "lists"
# get '/lists/new', to: 'lists#new'
# post '/lists', to: 'lists#create'


  resources :lists, only: [:index, :show, :create, :new] do
   resources :bookmarks, only: [:new, :create]
 end
  resources :bookmarks, only: [:destroy]
end
