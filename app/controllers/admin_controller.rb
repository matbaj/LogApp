class AdminController < ApplicationController

	def index
		@admin = Repo.all(Admin)
	end

	def create
		a = Admin.new
		a.name = params[:name]
		Repo.create(a)
		redirect_to "/admin"
	end

	def show
		@admin = Repo.find(Admin, params[:id].to_i)
	end

	def delete

	end

	def authorize

	end

	def edit

	end

	def new

	end

end