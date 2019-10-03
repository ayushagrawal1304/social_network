Rails.application.routes.draw do
  
  root 'welcome#index'
  
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions', passwords: 'users/passwords', communities: 'users/communities' } 
  
  namespace :users do
    resources :dashboards   

    resources :communities do
      member do
        get "invite_user"
      end
    end

    resources :invitations do
      member do
        put "accept"
      end
    end

  end

end
