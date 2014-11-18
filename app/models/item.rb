class Item < ActiveRecord::Base
	belongs_to :category
	# belongs_to :users , through: :history
end
