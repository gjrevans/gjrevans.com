Rails.application.routes.draw do
  resources :projects
    root to: "contacts#new"
    resources :contacts, only: [:new, :create]
end
