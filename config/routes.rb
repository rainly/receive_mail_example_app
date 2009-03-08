ActionController::Routing::Routes.draw do |map|
  map.resources :users, :has_many => [:messages]
  map.root :controller => 'users'
end
