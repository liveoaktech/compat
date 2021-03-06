require_dependency 'liveoak_compat'

# Register the engine routes to allow this to become a gem and imported in other repositories
LiveoakCompat::Engine.routes.draw do
  root 'runs#new'
  get 'runs/new'
  get 'runs/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  mount LiveoakCompat::Engine => '/', as: 'main'
end
