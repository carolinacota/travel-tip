Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'pages#home'

  get :autocomplete, to: 'pages#autocomplete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users, only: :show, param: :username

  resources :cities, only: :show, param: :name do
    resources :lists, only: [:show, :create]
  end
  resources :places, only: :show, param: :name do
    resources :tips, only: [:new, :create]
  end
  resources :tips, only: [:show]

  get '/:username', to: 'users#show', as: :profile
end

