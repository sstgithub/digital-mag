class LocationsController < ApplicationController
	def index
	end

	def new
		@location = Location.find(params[:id])
	end

	def edit
		@location = Location.find(params[:id])
	end

	def create
	end

	def update
	end

	private

	def location_params
		params.require(:location).permit!
	end
end
