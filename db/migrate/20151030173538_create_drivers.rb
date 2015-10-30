class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :tlc_licence_number
      t.string :ssn
      t.string :drivers_license_number
      t.string :address
      t.integer :weekly_lease

      t.timestamps null: false
    end
    add_index :drivers, :tlc_licence_number
    add_index :drivers, :ssn
    add_index :drivers, :drivers_license_number
  end
end
