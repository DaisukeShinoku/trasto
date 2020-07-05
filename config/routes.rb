Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  root 'homes#top'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  scope module: :user do
    resources :users do
      member do
        get :bookmark, to: 'bookmarks#index'
        get :to_go_list, to: 'to_go_lists#index'
        get :following, :followers
      end
    end
    get  '/signup',  to: 'users#new'
    resources :messages, :only => [:create]
    resources :relationships,       only: [:create, :destroy]
    resources :categories, :only => [:index]
    resources :tweets do
      resources :tweet_comments, only: [:destroy]
      resource :favorites, only: [:create, :destroy]
      member do
        resources :tweet_comments, only: [:create]
      end
    end
    resources :rooms, :only => [:create, :show, :index] do
      member do
        get :show_additionally, to: 'rooms#show_additionally'
      end
    end
    resources :houses do
      member do
        resources :house_comments, only: [:create, :index]
      end
      resources :stories do
        member do
          resources :story_comments, only: [:create, :index]
          resources :story_bookmarks, only: [:create, :destroy]
        end
        resources :story_comments, only: [:destroy]
      end
      resources :house_comments, only: [:destroy]
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
