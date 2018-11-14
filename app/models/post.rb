class Post < ApplicationRecord
	has_and_belongs_to_many :tags
	default_scope {order range: :desc}

	def all_tags
      self.tags.map(&:name).join(', ')
    end

    def all_tags=(names)
      self.tags = names.split(',').map do |name|
        Tag.where(name: name.strip).first_or_create!
      end
    end
end
