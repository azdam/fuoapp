class CreateAdminstrators < ActiveRecord::Migration
  def change
    create_table :adminstrators do |t|
      t.string :employee_id
      t.string :lastname
      t.string :firstname
      t.string :email
      t.integer :auth_level

      t.timestamps
    end
  end
end
