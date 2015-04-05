class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :lastname
      t.string :firstname
      t.string :matric_nos
      t.string :string
      t.string :department
      t.string :level
      t.string :email
      t.string :phonenos

      t.timestamps
    end
  end
end
