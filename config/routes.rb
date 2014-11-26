Rails.application.routes.draw do
  # Routes for the Cuisine_type resource:
  # CREATE
  get('/cuisine_types/new', { :controller => 'cuisine_types', :action => 'new' })
  get('/create_cuisine_type', { :controller => 'cuisine_types', :action => 'create' })

  # READ
  get('/cuisine_types', { :controller => 'cuisine_types', :action => 'index' })
  get('/cuisine_types/:id', { :controller => 'cuisine_types', :action => 'show' })

  # UPDATE
  get('/cuisine_types/:id/edit', { :controller => 'cuisine_types', :action => 'edit' })
  get('/update_cuisine_type/:id', { :controller => 'cuisine_types', :action => 'update' })

  # DELETE
  get('/delete_cuisine_type/:id', { :controller => 'cuisine_types', :action => 'destroy' })
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get('/favorites/new', { :controller => 'favorites', :action => 'new' })
  get('/create_favorite', { :controller => 'favorites', :action => 'create' })

  # READ
  get('/favorites', { :controller => 'favorites', :action => 'index' })
  get('/favorites/:id', { :controller => 'favorites', :action => 'show' })

  # UPDATE
  get('/favorites/:id/edit', { :controller => 'favorites', :action => 'edit' })
  get('/update_favorite/:id', { :controller => 'favorites', :action => 'update' })

  # DELETE
  get('/delete_favorite/:id', { :controller => 'favorites', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Routes for the Ingredient resource:
  # CREATE
  get('/ingredients/new', { :controller => 'ingredients', :action => 'new' })
  get('/create_ingredient', { :controller => 'ingredients', :action => 'create' })

  # READ
  get('/ingredients', { :controller => 'ingredients', :action => 'index' })
  get('/ingredients/:id', { :controller => 'ingredients', :action => 'show' })

  # UPDATE
  get('/ingredients/:id/edit', { :controller => 'ingredients', :action => 'edit' })
  get('/update_ingredient/:id', { :controller => 'ingredients', :action => 'update' })

  # DELETE
  get('/delete_ingredient/:id', { :controller => 'ingredients', :action => 'destroy' })
  #------------------------------

  # Routes for the Recipe resource:
  # CREATE
  get('/recipes/new', { :controller => 'recipes', :action => 'new' })
  get('/create_recipe', { :controller => 'recipes', :action => 'create' })

  # READ
  get('/recipes', { :controller => 'recipes', :action => 'index' })
  get('/recipes/:id', { :controller => 'recipes', :action => 'show' })

  # UPDATE
  get('/recipes/:id/edit', { :controller => 'recipes', :action => 'edit' })
  get('/update_recipe/:id', { :controller => 'recipes', :action => 'update' })

  # DELETE
  get('/delete_recipe/:id', { :controller => 'recipes', :action => 'destroy' })
  #------------------------------

  get("/", { :controller => "search", :action => "home"})

  # Routes for recipes
  #get("/recipes", { :controller => "recipes", :action => "home" })
  #get("/recipes/:a/:b", { :controller => "recipes", :action => "index" })

end
