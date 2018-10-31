class Firearm < ApplicationRecord
  has_many :choosen_arms
 
  def initialize(params)
  	#@typearm = firearms.typearm
  	#@status = firearms.atstus
  	#@name = firearms.name

  end


  def self.search(params)
  	search_hash = {}
   
    if params[:search]
      search_hash[:typearm] = params[:typearm] unless params[:typearm].blank?
      search_hash[:atstus] = params[:status] unless params[:status].blank?
      search_hash[:country] = params[:country] unless params[:country].blank?
      search_hash[:year] = params[:year] unless params[:year].blank?
      search_hash[:caliber] = params[:caliber] unless params[:caliber].blank?
      search_hash[:action_type] = params[:action_type] unless params[:action_type].blank?
      search_hash[:trigger_type] = params[:trigger_type] unless params[:trigger_type].blank?
      search_hash[:barrel_l] = params[:barrel_l] unless params[:barrel_l].blank?
      search_hash[:over_l] = params[:over_l] unless params[:over_l].blank?
      search_hash[:over_l_f] = params[:over_l_f] unless params[:over_l_f].blank?
      search_hash[:em_w] = params[:em_w] unless params[:em_w].blank?
      search_hash[:l_w] = params[:l_w] unless params[:l_w].blank?
      search_hash[:am_cap] = params[:am_cap] unless params[:am_cap].blank?
      search_hash[:fr_mat] = params[:fr_mat] unless params[:fr_mat].blank?
      search_hash[:stock_type] = params[:stock_type] unless params[:stock_type].blank?



      Firearm.where(search_hash)
      
    #else
    #  Firearm.all
    end

  end





end
