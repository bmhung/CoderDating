Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  get 'login' => "sessions#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
