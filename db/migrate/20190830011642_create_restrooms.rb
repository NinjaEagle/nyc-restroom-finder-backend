class CreateRestrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :restrooms do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :wheelchair_accessible
      t.string :restroom_type
      t.string :address
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
