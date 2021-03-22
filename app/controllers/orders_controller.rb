class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def billing
    @order = Order.new(order_params)
    @order.save
  end

  def shipping
    @order = Order.find(params[:order][:order_id])
    @order.shipping_address = order_params[:shipping_address]
  end

  def confirmation

  end

  private

  def order_params
    allowed = params.require(:order).permit(:billing_details, :status, :shipping_address, :order_id)
    allowed[:status] = allowed[:status].to_i
    allowed
  end
end
