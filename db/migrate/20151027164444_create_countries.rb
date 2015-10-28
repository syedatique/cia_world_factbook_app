class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :flag_image
      t.decimal :size
      t.decimal :population
      t.text :first_language
      t.string :currancy

      t.timestamps null: false
    end
  end
end
