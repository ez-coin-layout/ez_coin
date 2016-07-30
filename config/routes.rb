Rails.application.routes.draw do


  namespace :default do
    get 'home'     => 'home#index'
    get 'entrance' => 'entrance#index'
    resources :deposit_requests, only: [:new, :create]
    get    'deposit_request/complete'  => 'deposit_requests#complete'
    resources :credit_deposit, only: [:new, :create]
    get    'credit_deposit/complete'  => 'credit_deposit#complete'
    resources :change_coin, only: [:new, :create]
    get    'change_coin/complete'  => 'change_coin#complete'
    get    'sign_in'  => 'session#new'
    get    'sign_in'  => 'session#new'
    post   'sign_in'  => 'session#create'
    delete 'sign_out' => 'session#destroy'
  end


  namespace :admin do
    resources :managers
    resources :deposit_records, only: [:index, :show]
    resources :deposit_requests, only: [:index, :create, :destroy]
    get    'user'     => 'user#index'
    get    'sign_in'  => 'session#new'
    post   'sign_in'  => 'session#create'
    delete 'sign_out' => 'session#destroy'
    root to: 'home#index'
  end

  root to: 'default/home#index'

end
