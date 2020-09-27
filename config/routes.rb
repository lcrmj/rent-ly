Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'landing#index'

  get '/vehicles/search', to: 'vehicles#search'
end
