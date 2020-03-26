Rails.application.routes.draw do
  resources :students, only: [:new, :edit, :create, :update, :show]
  resources :school_classes, only: [:new, :edit, :create, :update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
