class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.string :rating
      t.references :restaurant, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
