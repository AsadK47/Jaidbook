class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      # t.bigint :user_id
      t.text :email
      t.timestamps
    end
  end
end
