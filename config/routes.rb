Rails.application.routes.draw do
  get 'item/index'
  get 'item/feeds'
  root to: 'item#index'
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
