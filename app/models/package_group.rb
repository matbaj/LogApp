class PackageGroup
	attr_accessor :id, :name

	def get_all_packages(group_name)
		group = self.storage.get(group_name)
		Packages.storage_get_by_field("group_id", group.id)
	end

end