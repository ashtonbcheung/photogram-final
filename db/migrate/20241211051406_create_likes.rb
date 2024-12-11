class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.integer :fan_id
      t.integer :photo_id

      t.timestamps
    end

    add_foreign_key :likes, :users, column: :fan_id
    add_foreign_key :likes, :photos
  end
end
