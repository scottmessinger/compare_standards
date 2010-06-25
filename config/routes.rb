ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => :curriculums

  map.connect ':state/:grade/', :controller => :curriculums, :action => :show, :requirements => { :grade => /\d{1,2}/ } 
  map.connect ':state', :controller => :curriculums, :action => :show
  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
