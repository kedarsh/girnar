class Flavour < ActiveRecord::Base

	has_many :related_flavours, :foreign_key => :flavour_a_id
  	has_many :flavours, :through => :related_flavours, :source => :flavour_b
end
