class Theme < ActiveRecord::Base
	has_and_belongs_to_many :labels
end
