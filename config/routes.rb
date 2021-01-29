Rails.application.routes.draw do
resources :students
resources :school
resources :school_class
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
