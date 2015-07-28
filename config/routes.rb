Rails.application.routes.draw do
  get '/movies/new' => 'application#new'
  get '/movies/create' => 'application#create'
  get '/movies/:id' => 'application#show'
  get '/movies/:id/edit' => 'application#edit'
  get '/update_movies/:id' => 'application#update'
  get '/movies' => 'application#index'
  get '/movies/:id/delete' => 'application#delete'
end
