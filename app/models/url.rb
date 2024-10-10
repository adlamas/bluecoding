
class Url < ApplicationRecord
	validates :short_url, presence: true
	validates :real_url, presence: true

	def click
		update(clicks: self.clicks + 1)
	end
end
