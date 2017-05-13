Rails.application.routes.draw do
    root to: "pages#index"
    get 'animations', to: 'pages#animations'
    resources :sites
    resources :contacts, only: [:new, :create]
    resources :projects
    devise_for :users
end
