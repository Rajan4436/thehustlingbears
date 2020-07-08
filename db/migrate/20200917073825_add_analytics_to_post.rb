class AddAnalyticsToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :ref, :string
    add_column :posts, :upvote, :integer, default: 0
    add_column :posts, :downvote, :integer, default: 0
    add_index :posts, :ref
  end
end
