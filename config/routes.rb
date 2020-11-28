Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/movies', to: 'movie_likes#index'
  get '/movies/:id', to: 'movie_likes#show'

  post '/movies', to: 'movie_likes#create'
  post '/movies/dislike', to: 'movie_likes#dislike'
 
end
