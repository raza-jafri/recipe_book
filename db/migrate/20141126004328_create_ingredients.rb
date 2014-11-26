class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :name
      t.integer :amount
      t.string :amount_units

      t.timestamps

    end
  end
end
