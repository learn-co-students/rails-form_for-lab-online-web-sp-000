Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:create, :update, :new, :edit, :show]

  resources :school_classes, only: [:create, :update, :new, :edit, :show]


end
