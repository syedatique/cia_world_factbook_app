class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country_name
      t.decimal :population
      t.decimal :size

      t.timestamps null: false
    end
  end
end