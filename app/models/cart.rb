class Cart < ApplicationRecord
		belongs_to :user, dependent: :destroy
	has_many :items
end
