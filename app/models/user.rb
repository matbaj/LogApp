class User

	attr_accessor :id, :username, :password


	def self.authorize(username, password)
		self.storage_get_all.each do |user|
			return user if user.username == username && user.password = password
		end

		return nil
	end
	


end