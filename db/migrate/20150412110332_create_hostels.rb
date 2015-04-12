class CreateHostels < ActiveRecord::Migration
  def change
    create_table :hostels do |t|
      t.string :name
      t.string :description
      t.integer :room_count

      t.timestamps
    end
  end
end
