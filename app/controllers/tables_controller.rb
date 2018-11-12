class TablesController < ApplicationController
  def create
    @table = Table.new(params.require(:table).permit(:number, :restaurant_id))
    flash[:notice] = if @table.save
                       'Nowy stolik dodany'
                     else
                       @table.errors.full_messages.join('. ')
                     end
    redirect_to restorer_panel_restorer_path(@table.restaurant_id)
  end
  def destroy
    @table = Table.find(params[:id])
    path = @table.restaurant_id
    flash[:notice] = if @table.destroy
                       'Stolik usunięty'
                     else
                       @table.errors.full_messages.join('. ')
                     end
    redirect_to restorer_panel_restorer_path(path)

  end
end