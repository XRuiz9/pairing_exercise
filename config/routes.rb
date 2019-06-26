Rails.application.routes.draw do
  resources :guests, only: [:index, :show, :new, :create, :edit, :update]
  resources :rooms, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
