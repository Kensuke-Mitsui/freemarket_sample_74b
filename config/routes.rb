Rails.application.routes.draw do
  get 'creditcard/new'  #users情報を登録した後に削除
  get 'orders/index'    #items情報を登録した後に削除

  root 'items#index'
  devise_for :users
 
  resources :items do
    resources :orders, only: [:index] do
    end
  end

  resources :user do
    resources :creditcard, only: [:new, :show] do
      collection do
        post 'show', to: 'card#show'
        post 'pay', to: 'card#pay'
        post 'delete', to: 'card#delete'
      end
    end
  end
end
