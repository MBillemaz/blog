Rails.application.routes.draw do    root 'homepage#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'homepage#index', page: 1

  get '/categories/:category_id', to: 'homepage#index', as: 'post_by_category'
  post '/comment/:post_id', to: 'comment#create', as: 'create_comment'
  get '/:page_id', to: 'homepage#index', as: 'change_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :post, only: [:new, :create, :show]
end
