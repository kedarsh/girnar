class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :serving_style
  belongs_to :tea_base
  belongs_to :flavour, :class_name => 'Flavour'
  belongs_to :second_flavour, :class_name => 'Flavour'
  belongs_to :packaging
  belongs_to :label
end
