Linkchecker::Application.routes.draw do

  resources :domain
  get "domain/start"

  root :to => "home#index"
end
