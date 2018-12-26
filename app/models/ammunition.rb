class Ammunition < ApplicationRecord
	has_many :pictures, as: :imageable, dependent: :destroy
	accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true
  has_one :additional_ammo, dependent: :destroy
  accepts_nested_attributes_for :additional_ammo, reject_if: :all_blank, allow_destroy: true

	def self.search(params)
  	search_hash = {}
   
    if params[:search]
      search_hash[:type_bul] = params[:type_bul] unless params[:type_bul].blank?
      search_hash[:country] = params[:country] unless params[:country].blank?
      search_hash[:weight] = params[:weight] unless params[:weight].blank?
      search_hash[:speed] = params[:speed] unless params[:speed].blank?
      search_hash[:energy] = params[:energy] unless params[:energy].blank?
     

      Ammunition.where(search_hash)

    end

  end
end
