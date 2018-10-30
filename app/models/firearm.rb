class Firearm < ApplicationRecord
  has_many :choosen_arms
 
  def initialize
  	@typearm = firearms.typearm
  	@status = firearms.atstus
  	@name = firearms.name

  end


  def self.search(params)
  	search_hash = {}
   
    if params[:search]
      search_hash[:typearm] = params[:typearm]
      
   
      if params[:status].blank?
        search_hash
      else  
        search_hash[:atstus] = params[:status]
      end

      Firearm.where(search_hash)
      
    else
      Firearm.all
    end

  end





end
