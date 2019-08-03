class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.string :program
      t.string :previous_job
      t.string :previous_city
      t.string :hometown
      t.string :internship
      t.string :undergrad
      t.string :name
      t.string :add_info

      t.timestamps
    end
  end
end
