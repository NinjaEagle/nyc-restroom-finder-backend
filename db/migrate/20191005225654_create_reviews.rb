class CreateReviews < ActiveRecord::Migration[5.2]
  def change
     create_table :reviews do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :restroom, foreign_key: true
      t.string :restroom_name
      t.string :text
      
      t.timestamps
    end
  end
end
