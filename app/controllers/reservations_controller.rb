class ReservationsController < ActionController::Base
	def index
	end
	def create
    @reservation = Reservation.new(params.require(:begin, :end).permit(:table_id))
    flash[:notice] = if @reservation.save
                       'Rezerwacja złożona'
                     else
                       @reservartion.errors.full_messages.join('. ')
                     end
    redirect_to restaurant_index_path
  end
end
