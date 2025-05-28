class BookingsController < ApplicationController
  before_action :set_grandparent, only: %i[new create]

  def index
    @grandparent = Grandparent.find(params[:grandparent_id])
    @bookings = Booking.all
    @grandparents_bookings = Booking.where(grandparent_id: params[:grandparent_id])
  end

  def new
    @grandparent = Grandparent.find(params[:grandparent_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.grandparent = @grandparent
    @booking.user = current_user
    if @booking.save
      redirect_to grandparent_path(@grandparent), notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  def my_bookings
    @bookings = Booking.where(user_id: current_user.id)
  end
  private
  def set_grandparent
    @grandparent = Grandparent.find(params[:grandparent_id])
  end

  def booking_params
    params.require(:booking).permit(:date_time)
  end
end
