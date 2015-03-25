class User < RepositoryModel

	id = nil
	username = nil
	password = nil


	def self.authorize(username, password)
		self.storage_get_all.each do |user|
			return user if user.username == username && user.password = password
		end

		return nil
	end


	def set_role

	end

	


end