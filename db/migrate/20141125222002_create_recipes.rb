class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :cuisine_id
      t.string :recipe_name
      t.string :image_url
      t.integer :time_to_prepare
      t.integer :time_to_cook

      t.timestamps

    end
  end
end
