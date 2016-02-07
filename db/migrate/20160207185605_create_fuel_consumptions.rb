class CreateFuelConsumptions < ActiveRecord::Migration
  def change
    create_table :fuel_consumptions do |t|
      t.integer :distance
      t.integer :fuel_amount

      t.timestamps null: false
    end
  end
end
