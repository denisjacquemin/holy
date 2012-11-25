Holiday::Application.routes.draw do
  
  match 'auth/:provider/callback', to: 'sessions#create'
  #match 'auth/failure', to: redirect('/')

  devise_scope :user do
    get "login", :to => "devise/sessions#new"
    get "logout", :to => "devise/sessions#destroy"
    get "register", :to => "devise/registrations#new"
    get "i-lost-my-password", :to => "devise/passwords#new", :as => 'lostpassword'
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  

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
