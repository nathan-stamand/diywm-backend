Rails.application.routes.draw do
  resources :steps
  resources :projects do
    resources :steps
  end
end
