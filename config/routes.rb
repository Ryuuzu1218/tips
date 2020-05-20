Rails.application.routes.draw do
  devise_for :users
  root "memos#index"
  resources :users, only: :show

resources :tips, only: [:index,:new,:create]
resources :memos, only: [:index,:new,:create,:edit,:update,:destroy] do
  collection do
    get 'search'
  end
end
end
