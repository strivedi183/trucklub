Trucklub::Application.routes.draw do
  root :to => 'welcome#index'
  resources :trucks, :only => [:index]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
