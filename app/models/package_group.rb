class PackageGroup < RepositoryModel


	id = nil
	name = nil

	def get_all_packages(group_name)
		group = self.storage.get(group_name)
		Packages.get_all_packages().select { |p| p.group_id == group.id }
	end

end