Trucklub::Application.routes.draw do
  root :to => 'welcome#index'
  resources :trucks, :only => [:index, :show]
  resources :users, :only => [:new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  post '/sms' => 'sms#receive'
#  get '/sms_test' => 'welcome#sms_test'
end
