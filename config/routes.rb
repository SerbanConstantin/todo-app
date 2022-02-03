Rails.application.routes.draw do
  devise_for :users
  resources :lists

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'trash/trash_em'
  get 'trash/trash_em_all'
  root 'lists#index'
  #root 'home#home_index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
