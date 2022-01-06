Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :my_runs, except: [:update, :edit] do
    collection do
      resources :planned, only: [:create, :new]
    end
  end
  resources :runs, only: [:index, :show] do
    resources :run_participations, only: [:create]
  end
end
