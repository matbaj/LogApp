class LocalizationController < ApplicationController


	def index
		@localizations = Repo.all(Localization)
	end


	def create
		l = Localization.new
		l.name = params[:name]
		Repo.create(l)
		redirect_to "/package"	

	end

	def get
	end

	def destroy

	end

	def show
		@localization = Repo.find(Localization, params[:id].to_i)
	end

	def new

	end

end