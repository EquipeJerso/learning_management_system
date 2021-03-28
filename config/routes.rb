Rails.application.routes.draw do
  get 'courses/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'welcome#index'
  get 'courses', to: 'courses#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
