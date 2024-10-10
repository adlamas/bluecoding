
class Url < ApplicationRecord
	validates :short_url, presence: true
	validates :real_url, presence: true
end
