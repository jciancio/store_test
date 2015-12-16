class OrdersController < ApplicationController
  def show
  end

  def checkout
    @order = Shoppe::Order.find(current_order.id)
  end

  def destroy
    current_order.destroy
    session[:order_id] = nil
    redirect_to root_path, :notice => "Basket emptied successfully."
  end
end
