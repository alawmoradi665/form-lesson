Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/listings/new', to: 'listings#new', as: "new_listing"
  post '/listings', to: 'listings#create', as: 'listings' 
end


# all forms make a post request to a specific, hence creating a route here

