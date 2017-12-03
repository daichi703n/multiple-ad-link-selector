Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  resources :users, :only => [:index, :show]
  resources :links
  get 'feature_pages/manage'

  get 'feature_pages/view'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Selector::API => '/api/'
end
