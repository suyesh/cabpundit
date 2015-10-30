class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :license_number
      t.string :status
      t.string :base_name
      t.string :base_number
      t.string :base_address
      t.string :base_telephone_number
      t.string :license_plate_number
      t.string :permit_owner
      t.datetime :hackup_date
      t.string :vin_number
      t.string :car_make_model
      t.string :car_model_year
      t.datetime :certification_date
      t.string :milage

      t.timestamps null: false
    end
    add_index :cars, :license_number
    add_index :cars, :base_name
    add_index :cars, :base_number
    add_index :cars, :base_telephone_number
    add_index :cars, :license_plate_number
    add_index :cars, :permit_owner
    add_index :cars, :vin_number
    add_index :cars, :car_make_model
  end
end
