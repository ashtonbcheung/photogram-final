class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :comments_count
      t.integer :likes_count
      t.string :image
      t.integer :owner_id

      t.timestamps
    end
    add_index :photos, :owner_id
  end
end