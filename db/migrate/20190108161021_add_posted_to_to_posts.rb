class AddPostedToToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :posted_to, :text
  end
end
