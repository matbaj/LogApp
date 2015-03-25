class UserController < ApplicationController


	def index
		@users = Repo.all(User)
	end

	def create
		u = User.new
		u.username = params[:username]
		u.password = params[:password]
		Repo.create(u)
		redirect_to "/user"
	end

	def show
		@user = Repo.find(User, params[:id].to_i)
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