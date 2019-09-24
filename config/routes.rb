Rails.application.routes.draw do
  
  root 'welcome#index'
  
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions', passwords: 'users/passwords', communities: 'users/communities' } 
  
  namespace :users do
    resources :dashboards, only: :index
    resources :communities 
  end


end
