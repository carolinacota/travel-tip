Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'pages#home'

  # get :autocomplete, to: 'pages#autocomplete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: :update, param: :username

  resources :cities, only: :show, param: :name do
    resources :places, only: :show, param: :slug do
      resources :tips, only: [:new, :create]
      resources :listplaces, only: :create
    end
    resources :lists, only: [:show, :create]
  end

  resources :tips, only: [:show] do
    resource :upvote, only: [:create]
    resource :downvote, only: [:create]
  end

  resource :autocomplete, only: [:show]

  # resources :follows, only: %i[create destroy]

  scope '/:username' do
    resource :follow, only: %i[create destroy]

  end

  get '/:username/followers', to: 'follows#followers', as: :followers
  get '/:username', to: 'users#show', as: :profile

  # post '/tips/:id', to: 'votes#upvote', as: :upvote
  # post '/tips/:id', to: 'votes#downvote', as: :downvote
end

