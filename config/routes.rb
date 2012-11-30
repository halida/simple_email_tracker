SimpleEmailTracker::Engine.routes.draw do
  match "/:uuid/t.gif", controller: :email_trackers, action: :show
  match "/", controller: :email_trackers, action: :index
end
