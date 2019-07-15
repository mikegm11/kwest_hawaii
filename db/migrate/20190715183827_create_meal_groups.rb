class CreateMealGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :meal_groups do |t|
      t.integer :meal_id
      t.integer :kwestee_id

      t.timestamps
    end
  end
end
