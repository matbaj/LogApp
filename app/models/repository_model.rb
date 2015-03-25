class RepositoryModel
	#This is sample Memory Database
	@storage = {}

	def self.storage
		@storage.clone
	end


	def storage_create
		unless @storage[self.class.name]
			@storage[self.class.name] = []
		end
		@storage[self.name].append(self.clone)
	end

	def storage_get_all
		@storage[class.name].clone
	end

	def storage_get(id)
		@storage[class.name].each do |element|
			return element.clone if element.id == id
		end
		return nil
	end

	def storage_get_by_field(name,value)
		arr = []
		@storage[class.name].each do |element|
			arr.append(element.clone) if element[name] == value
		end
		return arr
	end

	def storage_update(el)
		@storage[class.name].each do |element|
			if element.id == el.id
				@storage[@storage[class.name].index(element)] = el.clone
			end

		end
	end




end