class Url < ApplicationRecord

	before_save :shorten
	def shorten	
		self.short_url = SecureRandom.urlsafe_base64(4)
	end
end
