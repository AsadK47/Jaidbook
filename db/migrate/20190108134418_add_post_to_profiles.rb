class AddPostToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :user_id, :bigint
    add_column :profiles, :email, :text
    add_column :profiles, :title, :text
    add_column :profiles, :body, :text
  end
end
