Trucklub::Application.routes.draw do
  root :to => 'welcome#index'
  resources :trucks, :only => [:index, :show]
  resources :users, :only => [:new, :create] do
    collection do
      get :admin
    end
    member do
      get :send_code
    end
  end
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  post '/sms' => 'sms#receive'
#  get '/sms_test' => 'welcome#sms_test'
end
