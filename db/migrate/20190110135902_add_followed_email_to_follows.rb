# frozen_string_literal: true

class AddFollowedEmailToFollows < ActiveRecord::Migration[5.2]
  def change
    add_column :follows, :followed_email, :string
  end
end
