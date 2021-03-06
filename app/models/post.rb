class Post < ApplicationRecord
	has_many :taggings, :dependent => :destroy
  has_many :tags, through: :taggings
	default_scope {order range: :desc, datenews: :desc}
  validates  :title, presence: true

	def all_tags
      self.tags.map(&:name).join(', ')
  end
  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end
end
