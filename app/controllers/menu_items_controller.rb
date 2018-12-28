class MenuItemsController < ApplicationController
  def create
    @menu = MenuItem.new(params.require(:menu_item).permit(:name, :price_cents, :menu_id))
    flash[:notice] = if @menu.save
                       'Nowy element menu dodany'
                     else
                       @menu.errors.full_messages.join('. ')
                     end
    path = Menu.where(id: @menu.menu_id).first.restaurant_id
    redirect_to restorer_panel_restorer_path(path)
  end

  def destroy
    @menu = MenuItem.find(params[:id])
    path = Menu.where(id: @menu.menu_id).first.restaurant_id
    flash[:notice] = if @menu.destroy
                       'Element menu usunięty'
                     else
                       @menu.errors.full_messages.join('. ')
                     end
    redirect_to restorer_panel_restorer_path(path)
  end
end
