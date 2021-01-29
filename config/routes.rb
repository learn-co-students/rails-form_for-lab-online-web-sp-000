Rails.application.routes.draw do
resources :students
resources :school_class
resources :school_classes
resources :student
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
