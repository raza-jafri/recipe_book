Rails.application.routes.draw do
  get("/", { :controller => "search", :action => "home"})

  # Routes for recipes
  get("/recipes", { :controller => "recipes", :action => "home" })
  get("/recipes/:a/:b", { :controller => "recipes", :action => "index" })

end
