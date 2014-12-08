class Recipe < ActiveRecord::Base
  belongs_to :cuisine_id, :class_name => "CuisineType", :foreign_key => "cuisine_id"
end
