class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.text :caption
      t.string :image
      t.integer :owner_id
      t.integer :likes_count, default: 0
      t.integer :comments_count, default: 0

      t.timestamps
    end

    add_foreign_key :photos, :users, column: :owner_id
  end
end
