Rails.application.routes.draw do

  devise_for :accounts
  root to: 'pages#home'

  get 'pages', to: 'pages#about'
  get 'pages', to: 'pages#contacts'

end
