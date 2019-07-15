class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :hotel
      t.integer :room_no

      t.timestamps
    end
  end
end
