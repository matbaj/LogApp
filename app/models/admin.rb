class Admin

	attr_accessor :id, :username, :password


	def create(username,password)
		self.create_new(self)
	end

	def self.authorize(username, password)
		self.storage_get_all.each do |user|
			return user if user.username == username && user.password = password
		end

		return nil
	end

	
end