Rails.application.routes.draw do
  resources 'school_classes', except: [:index, :destroy]
  resources 'students', except: [:index, :destroy]
end
