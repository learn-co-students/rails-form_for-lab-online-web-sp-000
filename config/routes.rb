Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, only: [:index, :show, :new, :edit, :create]
  resources :students, only: [:index, :show, :new, :edit, :create]
  patch 'students/:id', to: 'students#update'
  patch 'school_classes/:id', to: 'school_classes#update'
end
