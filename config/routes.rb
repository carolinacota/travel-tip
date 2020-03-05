Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'pages#home'

  # get :autocomplete, to: 'pages#autocomplete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users, only: :show, param: :username

  resources :cities, only: :show, param: :name do
    resources :places, only: :show, param: :name do
      resources :tips, only: [:new, :create]
    end
    resources :lists, only: [:show, :create]
    resources :places, only: :show, param: :name
  end

  resources :tips, only: [:show]

  resource :autocomplete, only: :show

  get '/:username', to: 'users#show', as: :profile
end

