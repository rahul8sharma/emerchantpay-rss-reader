Rails.application.routes.draw do
  root to: 'items#index'
  ActiveAdmin.routes(self)

  resources :items, only: [:index, :show] do
    get 'feeds', on: :collection
  end
end
