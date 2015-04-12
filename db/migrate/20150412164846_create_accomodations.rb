class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|
      t.string :room_nos
      t.string :validity_period
      t.boolean :has_occupant
      t.references :user, index: true
      t.references :hostel, index: true

      t.timestamps
    end
  end
end
