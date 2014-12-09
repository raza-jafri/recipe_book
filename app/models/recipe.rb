class Recipe < ActiveRecord::Base
  belongs_to :cuisine, :class_name => "CuisineType", :foreign_key => "cuisine_id"
end
