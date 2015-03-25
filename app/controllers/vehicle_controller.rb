class VehicleController < ApplicationController


	def index
		@vehicles = Repo.all(Vehicle)
		puts Repo.adapter
		puts @vehicles
	end

	def create
		v = Vehicle.new
		v.name = params[:name]
		Repo.create(v)
		redirect_to "/vehicle"
	end

	def show
		@vehicle = Repo.find(Vehicle, params[:id].to_i)
	end

	def delete

	end

	def set_tour

	end

	def new

	end



end