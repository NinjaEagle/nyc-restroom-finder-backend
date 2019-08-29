class CreateRestrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :restrooms do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.boolean :wheelchair
      t.string :type
      
      t.timestamps
    end
  end
end
