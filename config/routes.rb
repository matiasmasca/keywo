Rails.application.routes.draw do
  resources :projects
  resources :cities
  devise_for :users
  resources :investor_projects
  resources :investors
  resources :collaborators
  resources :sectors
  resources :skills
  resources :zones
  get 'pages/index'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
