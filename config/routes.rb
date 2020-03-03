Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get :autocomplete, to: 'pages#autocomplete'

end
