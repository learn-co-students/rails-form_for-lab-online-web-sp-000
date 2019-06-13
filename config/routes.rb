Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show, :edit, :create, :update, :new]
  resources :school_classes, only: [:index, :show, :create, :update, :new, :edit]
end
