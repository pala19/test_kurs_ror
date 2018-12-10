class ReservationsController < ActionController::Base

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
    @restaurants = Restaurant.where(:accepted => true)
    if params[:restaurant_id]
      @available_tables = @restaurants.find(params[:restaurant_id]).tables
    end
  end
end
