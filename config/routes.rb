Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "memos#index"
resources :tips, only: [:index,:new,:create]
resources :memos, only: [:index,:new,:create,:edit,:update,:destroy] do
  collection do
    get 'search'
  end
end
end
