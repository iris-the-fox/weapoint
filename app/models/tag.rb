class Tag < ApplicationRecord
	has_and_belongs_to_many :posts
	
	def self.counts
      self.select("name, count(posts_tags.tag_id) as count").joins(:posts_tags).group("name, posts_tags.tag_id")
    end
end
