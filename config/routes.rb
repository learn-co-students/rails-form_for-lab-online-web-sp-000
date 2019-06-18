Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resource :students, only: [:new, :create, :show, :edit, :update]
  # resource :school_classes, only: [:new, :create, :show, :edit, :update]

  resources :students
  resources :school_classes
end
