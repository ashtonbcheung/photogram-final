class CreateFollowRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :follow_requests do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.string :status

      t.timestamps
    end

    add_foreign_key :follow_requests, :users, column: :sender_id
    add_foreign_key :follow_requests, :users, column: :recipient_id
  end
end
