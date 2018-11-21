class Learntag < ApplicationRecord
	has_many :learntaggings, :dependent => :destroy
	has_many :learnings, through: :learntaggings
	def self.counts
      self.select("name, count(learntaggings.learntag_id) as count").joins(:learntaggings).group("name, learntaggings.learntag_id")
    end
end
