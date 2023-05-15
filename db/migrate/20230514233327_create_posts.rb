class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :activity_id
      t.string :description
      t.integer :location_id

      t.timestamps
    end
  end
end
