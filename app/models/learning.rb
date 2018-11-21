class Learning < ApplicationRecord
	has_many :learntaggings
	has_many :learntags, through: :learntaggings
	default_scope {order range: :desc, created_at: :desc}

	def all_tags
      self.learntags.map(&:name).join(', ')
  end
  def all_tags=(names)
    self.learntags = names.split(',').map do |name|
      Learntag.where(name: name.strip).first_or_create!
    end
  end
end
