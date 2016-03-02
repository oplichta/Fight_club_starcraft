Rails.application.routes.draw do
  root 'fighters#index'
  resources :fights
  resources :fighters do
    resources :skills
  end
end
