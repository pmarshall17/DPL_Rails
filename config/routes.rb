Rails.application.routes.draw do
  root 'schools#index'

  resources :schools #the root and resources 'schools' needs to be the same as the contorllers tab that you call it
  
end