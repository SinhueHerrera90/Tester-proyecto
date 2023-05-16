class AddNameToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :name, :string
  end
end
