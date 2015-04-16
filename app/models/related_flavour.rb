class RelatedFlavour < ActiveRecord::Base
	belongs_to :flavour_a, class_name: "Flavour"
  	belongs_to :flavour_b, class_name: "Flavour"
end
