class Recipe < ActiveRecord::Base
  belongs_to :cuisine, :class_name => "CuisineType", :foreign_key => "cuisine_id"
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
end
