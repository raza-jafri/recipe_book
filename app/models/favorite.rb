class Favorite < ActiveRecord::Base

belongs_to :user, :class_name => "User", :foreign_key => "user_id"

belongs_to :recipe, :class_name => "Recipe", :foreign_key => "recipe_id"

end
