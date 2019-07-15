class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :restaurant

      t.timestamps
    end
  end
end
