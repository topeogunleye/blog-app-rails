Rails.application.routes.draw do
  get 'blog/index'
  root to: 'users#index'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end



end
