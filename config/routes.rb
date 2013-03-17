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

  # resources :eaters, :only => [:new, :create] do
  #   member do
  #     post :code
  #   end
  # end
  post '/eaters/:id/code' => 'eaters#create_code'
end
