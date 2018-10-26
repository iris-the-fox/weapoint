class Firearm < ApplicationRecord
  has_many :choosen_arms
 
  def initialize
  	@typearm = firearms.typearm
  	@name = firearms.name

  end

  def self.search(params)
    if params[:search]
     Firearm.where(typearm: params[:typearm])
      
    else
      Firearm.all
    end
  end


 

end
