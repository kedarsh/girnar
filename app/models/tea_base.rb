class TeaBase < ActiveRecord::Base
  belongs_to :serving_style
  has_many :tea_base_types
end
