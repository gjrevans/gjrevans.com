Rails.application.routes.draw do
    root to: "pages#index"
    resources :contacts, only: [:new, :create]
    resources :projects
    devise_for :users
end
