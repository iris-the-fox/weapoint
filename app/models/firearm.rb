class Firearm < ApplicationRecord
	#  belongs_to :from_airport, :class_name => "Airport"
 # belongs_to :to_airport, :class_name => "Airport"
  has_many :bookings
 # has_many :passengers, :through => :bookings

  def self.search(params)
    if params[:search]
      Firearm.where(typearm: params[typearm]) # prevents N + 1 queries
    else
      Firearm.none
    end
  end


  def initialize
  	@typearm= firearms.typearm

  end

end
