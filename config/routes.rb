Holiday::Application.routes.draw do

  devise_scope :user do
    get "login", :to => "devise/sessions#new"
    get "logout", :to => "devise/sessions#destroy"
    get "register", :to => "devise/registrations#new"
  end

  devise_for :users

  resources :images do
    collection { post :sort }
  end

  resources :items do
    member do
      get 'images'
    end
  end

  root :to => 'items#index'
end
