require 'date'
class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(params.require(:begin, :end).permit(:table_id))
    flash[:notice] = if @reservation.save
                       'Rezerwacja złożona'
                     else
                       @reservartion.errors.full_messages.join('. ')
                     end
    redirect_to restaurant_index_path
  end

  def index
    @restaurants = Restaurant.where(accepted: true)
    @available_tables = @restaurants.find(params[:restaurant_id]).tables if params[:restaurant_id]
  end

  def time
    @table = Table.find(params[:table_id])
    @restaurant = Restaurant.find(@table.restaurant_id)
    @reservations = @table.reservations
    @day = Date.strptime(params[:day], '%d/%m/%Y')
    @newreservation = Reservation.new
  end
end
