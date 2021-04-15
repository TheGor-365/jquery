Rails.application.routes.draw do

  devise_for :accounts
  root to: 'pages#home'

  get 'about',    to: 'pages#about', as: :about
  get 'contacts', to: 'pages#contacts', as: :contacts

  resources :jqueries

end
