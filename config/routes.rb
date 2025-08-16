Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:index, :show, :edit, :update]
 
  resources :posts do
    resources :comments, only:[:create, :destroy]
    resource :favorites, only:[:create, :destroy]
  end
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root :to => 'homes#top'
end
