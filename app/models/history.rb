class History < ActiveRecord::Base
	# has_many :items
	belongs_to :item
end
