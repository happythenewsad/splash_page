class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.string :sender_address

      t.timestamps
    end
  end
end
