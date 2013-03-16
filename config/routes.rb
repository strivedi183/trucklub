Trucklub::Application.routes.draw do
  root :to => 'welcome#index'
  resources :trucks, :only => [:index]
end
