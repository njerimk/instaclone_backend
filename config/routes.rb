Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
        get '/users', to: 'users#index', as: 'users'
        get '/users/:id', to: 'users#show', as: 'user'
        # resource :users, only: [:create]
        # post "/login", to: "users#login"
        # get "/auto_login", to: "users#auto_login"


        get '/posts', to: 'posts#index', as: 'posts'
        get '/posts/:id', to: 'posts#show', as: 'post'
        post "/login", to: "users#login"


        get '/comments', to: 'comments#index', as: 'comments'
        get '/comments/:id', to: 'comments#show', as: 'comment'

        get '/friendships', to: 'friendships#index', as: 'friendships'
  # resources :comments
  # resources :likes
  # resources :friendships
  # resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end
