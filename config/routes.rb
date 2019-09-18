Rails.application.routes.draw do
  
  root 'welcome#index'
  
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions' } 
  devise_for :communities
  
  namespace :users do
    resources :dashboards, only: :index
  end
end
