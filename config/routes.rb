Rails.application.routes.draw do
  # CREATE
  get '/movies/new' => 'application#new'
  get '/movies/create' => 'application#create'
  
  # READ
  get '/movies/:id' => 'application#show'
  get '/movies' => 'application#index'
  
  # UPDATE
  get '/update_movies/:id' => 'application#update'
  get '/movies/:id/edit' => 'application#edit'
  
  # DESTROY
  get '/movies/:id/delete' => 'application#delete'
end
