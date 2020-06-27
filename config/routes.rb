Rails.application.routes.draw do
  namespace :user do
    get 'to_go_lists/create'
    get 'to_go_lists/destroy'
    get 'to_go_lists/index'
  end
  namespace :user do
    get 'bookmarks/create'
    get 'bookmarks/destroy'
  end
  root 'homes#top'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  scope module: :user do
    resources :users do
      member do
        get :bookmark, to: 'bookmarks#index'
        get :to_go_list, to: 'to_go_lists#index'
      end
    end
    get  '/signup',  to: 'users#new'
    resources :houses do
      resources :stories
      resource :bookmarks, only: %i[create destroy]
      resource :to_go_lists, only: %i[create destroy]
      get :bookmarks, on: :collection
    end
  end

  namespace :admin do
    # get '/login', to: 'admins#new'
    # post '/login', to: 'admins#create'
    # delete '/logout',  to: 'admins#destroy'
    # get '/top', to: 'admins#top'
    resources :users
    resources :houses
    resources :categories, only: [:index, :create, :edit, :update]
  end

end
