Rails.application.routes.draw do

  root 'welcome#index'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'


  resources :meeting_details do
    member do
      get :delete
    end
  end

  resources :users_clubs do
    member do
      get :delete
    end
  end

  resources :users do
    member do
      get :delete
    end
  end

  resources :clubs do
    member do
        get :delete
      end
  end

  resources :club_types do
    member do
        get :delete
      end
  end

  resources :meetings do
    member do
      get :delete
    end
  end



#  get 'demo/index'
#  get 'members/index'
#  get 'members/show'
#  get 'members/new'
#  get 'members/edit'
#  get 'members/delete'
#  get 'clubs/index'
#  get 'clubs/show'
#  get 'clubs/new'
#  get 'clubs/edit'
#  get 'clubs/delete'


  #get 'clubs/index'
#  get 'clubs', to: 'clubs#index'
#  get 'clubs/:id', to: 'clubs#show'
#  post 'clubs', to: 'clubs#create'

#  get 'club_status', to: 'club_status#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
