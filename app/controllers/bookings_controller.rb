class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @grandparent = Grandparent.find(params[:grandparent_id])
    @booking = Booking.new
  end
end
