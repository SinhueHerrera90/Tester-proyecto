class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.integer :activity_id
      t.string :address
      t.string :image
      t.string :website

      t.timestamps
    end
  end
end
