
Rails.application.routes.draw do
  devise_for :restorers
  devise_for :admin_users, ActiveAdmin::Devise.config
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  ActiveAdmin.routes(self)
  root to: 'pages#home'

  namespace :restorer_panel, path: 'restorer' do
     root to: 'restorer#index'
  end
end