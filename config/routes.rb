Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'home#show'
  get '/auth/:provider/callback', to: 'sessions#create'
  root 'home#show'
end
