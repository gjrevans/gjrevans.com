Rails.application.routes.draw do
    root to: "contacts#new"
    resources :contacts, only: [:new, :create]
    resources :projects
    devise_for :users
end
