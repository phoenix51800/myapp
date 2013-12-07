class Post < ActiveRecord::Base
	default_scope order: 'posts.created_at DESC'

	def self.published
		self.where('publish = ?', true)
	end
	extend FriendlyId
  friendly_id :title, use: :slugged
end
