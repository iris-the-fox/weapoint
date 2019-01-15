module AmmunitionsHelper
	def select_by_field (parametr_for, prompt_for)

		select_tag( parametr_for, options_for_select(Ammunition.all.map {|am| am.send(parametr_for)}.compact.uniq.sort),  prompt: prompt_for, class: "form_class")
	end


end
