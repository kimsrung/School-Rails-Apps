SchoolApps::Application.routes.draw do
  
  root "courses#index"
  resources :courses do
    resources :objectives
  end
end
