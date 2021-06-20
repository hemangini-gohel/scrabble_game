Rails.application.routes.draw do

  resources :games
  resources :members

  root 'leader_boards#index'  
end
