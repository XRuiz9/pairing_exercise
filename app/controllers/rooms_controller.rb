class RoomsController < ApplicationController
	def index
		@rooms = Room.all
	end

	def new
	end

	def create
		@room = Room.create(room_params)

		if @room.valid?
			@room.save
			redirect_to room_path(@room)
		else
			flash.now[:error] = @room.errors.full_messages
			render :new
		end
	end

	def show
		set_room
	end

	def edit
		set_room
	end

	def update
		set_room
		@room.update(room_params)
		if @room.valid?
			redirect_to room_path(@room)
		else
			flash.now[:error] = @room.errors.full_messagess
			render :edit
		end
	end

	def set_room
		@room = Room.find(params[:id])
	end

	def room_params
		params.require(:room).permit(:roomnum, :bedrooms, :bathrooms, :size, :capacity, :cost)
	end
end
