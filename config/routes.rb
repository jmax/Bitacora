Bitacora::Application.routes.draw do
  devise_for :users, :path => :account

  get "welcome/index"
  root :to => "welcome#index"
end

