Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, only: [:create, :show, :new, :edit, :update]
  # get '/school_classes/:id', to: 'school_classes#show'
  resources :students, only: [:create, :show, :new, :edit, :update]
end
