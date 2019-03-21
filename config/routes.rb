ActionController::Routing::Routes.draw do |map|
  map.resources :posts, :has_many => :comments

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => "post"
end
