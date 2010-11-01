Bitacora::Application.routes.draw do
  devise_for :users, :path => :account

  resources :log_entries

  get "welcome/index"
  root :to => "welcome#index"
end

