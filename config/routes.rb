Rails.application.routes.draw do
  devise_for :users
  root to: 'game#index'
  
  resources :game do
  end
end
