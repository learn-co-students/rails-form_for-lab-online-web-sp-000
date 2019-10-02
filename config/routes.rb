Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :students, :school_classes

  # Controllers - Create controller files for school_classes and students. Build out the 
  # new, create, show, edit, and update actions in each of the controllers.
end
