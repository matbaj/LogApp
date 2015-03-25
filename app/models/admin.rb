class Admin < RepositoryModel

	username = nil
	password = nil


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