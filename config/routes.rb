Rails.application.routes.draw do
  resources :user_fighters
  resources :fighters
  resources :users
  get 'users/remove/:id', to: 'users#remove'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
