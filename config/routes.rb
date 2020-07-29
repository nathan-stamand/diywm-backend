Rails.application.routes.draw do
  resources :projects do
    resources :steps
  end
end
