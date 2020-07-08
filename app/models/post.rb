class Post < ApplicationRecord
	is_impressionable
	extend FriendlyId
  friendly_id :title, use: :slugged  
  has_rich_text :content
end
