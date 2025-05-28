class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @grandparents_bookings = Booking.where(grandparent_id: params[:grandparent_id])
  end
end
