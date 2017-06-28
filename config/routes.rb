Rails.application.routes.draw do
  resources :stories do
    resources :usersentences
  end
end
