Rails.application.routes.draw do
  root 'demo#index'

  get 'demo/index'
  get 'demo/data'
  get 'demo/hello'

  # Resourceful Routes
  resources :subjects do
    member do
      get :delete
    end
  end
  resources :pages
  resources :sections
=begin
  Resourceful URL Helpers

  {:controller => 'subjects', :action => 'show', :id => 5}
  subject_path(5)

  These two commands above are the same
=end

  # default route
  # get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
