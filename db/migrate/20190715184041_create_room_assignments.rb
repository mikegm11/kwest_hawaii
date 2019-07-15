class CreateRoomAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :room_assignments do |t|
      t.integer :room_id
      t.integer :kwestee_id

      t.timestamps
    end
  end
end
