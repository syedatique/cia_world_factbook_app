class RemoveCountryNameFromCity < ActiveRecord::Migration
  def change
    remove_column :cities, :country_name, :string
  end
end
