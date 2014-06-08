class PlacesController < ApplicationController
	def index
		@places = Place.all
	end

	def show
	end

	def new
		@place = Place.new
	end

	def edit
		@place = Place.find(params[:id])
	end

	def create
		@place = Place.new(place_params)
		if @place.save
			photos_path
		else
			redirect_to :back
		end
	end

	def update
		@place = Place.find(params[:id])
		if @place.update_attributes(place_params)
			photos_path
		else
			redirect_to :back
		end
	end

	private

	def place_params
		params.require(:place).permit!
	end
end
