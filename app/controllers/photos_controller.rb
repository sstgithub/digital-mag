class PhotosController < ApplicationController
	def index
		@photos = Photo.all
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def new
		@photo = Photo.new
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def create
		@photo = Photo.new(photo_params)
		if @photo.save
			redirect_to photo_path(@photo)
		else
			redirect_to photos_path
		end
	end

	def update
		@photo = Photo.find(params[:id])
		puts @photo.inspect
		if @photo.update_attributes(photo_params)
			puts @photo.inspect
			redirect_to photos_path
		else
			redirect_to photos_path
		end
	end

	private

	def photo_params
		params.require(:photo).permit!
	end
end
