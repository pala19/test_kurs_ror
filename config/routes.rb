# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :restorers
  devise_for :admin_users, ActiveAdmin::Devise.config
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  ActiveAdmin.routes(self)
  root to: 'restaurants#index'

  namespace :restorer_panel , path: 'restorer' do
    resources :restorer
  end
  resources :restaurants
end
