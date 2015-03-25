class PackageController < ApplicationController

	def index
		@packages = Repo.all(Package)
	end

	def show
		@package = Repo.find(Package, params[:id].to_i)
	end

	def create
		p = Package.new
		p.name = params[:name]
		Repo.create(p)
		redirect_to "/package"
	end

	def delete
		
	end

	def index

	end

	def new

	end

end