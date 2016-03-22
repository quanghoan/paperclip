class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.attachment :image
      t.attachment :video
      t.timestamps null: false
    end
  end
end
