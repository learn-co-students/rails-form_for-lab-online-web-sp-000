Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :school_classes, only: [:show, :new, :create, :edit, :update]
  resources :students, only: [:show, :new, :create, :edit, :update]

  # get 'school_classes/:id', to: 'school_classes#show'

end
