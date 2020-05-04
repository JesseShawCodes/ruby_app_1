Rails.application.routes.draw do
  # root 'demo#index'

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
  root 'static#index'
  namespace :v1, defaults: { format: 'json' } do 
    get 'things', to: 'things#index'
  end

  # Forward all requests to StaticController#index but requests
  # must be non-Ajax (!req.xhr?) and HTML Mime type (req.format.html?).
  # This does not include the root ("/") path.
  get '*page', to: 'static#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end
end
