Rails.application.routes.draw do
  root 'fighters#index'
  resources :fighters do
    resources :skills
  end
end
