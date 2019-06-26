class GuestsController < ApplicationController
	def index
		@guests = Guest.all
	end

	def new
	end

	def create
		@guest = Guest.create(guest_params)

		if @guest.valid?
			@guest.save
			redirect_to guest_path(@guest)
		else
			flash.now[:error] = @guest.errors.full_messages
			render :new
		end
	end

	def show
		set_guest
	end

	def edit
		set_guest
		@guest.update(guest_params)
		if @guest.valid?
			redirect_to guest_path(@guest)
		else
			flash.now[:error] = @guest.errors.full_messages
			render :edit
		end
	end

	def update
		set_guest
	end

	def set_guest
		@guest = Guest.find(params[:id])
	end

	def guest_params
		params.require(:guest).permit(:name, :room_id)
	end
end