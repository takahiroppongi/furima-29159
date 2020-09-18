Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  get '/users/sign_up', to: 'registrations#new'
  delete '/users/sign_out', to: 'sessions#destroy'
end
