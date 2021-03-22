class OrdersController < ApplicationController
  def new
    binding.pry
    @order = params[:order_id] ? Order.find(params[:order_id]) : Order.new
  end

  def billing
    if params[:order][:order_id]
      @order = Order.find(params[:order_id])
      @order.update(order.params)
    else
      @order = Order.new(order_params)
      @order.save
    end
  end

  def shipping
    @order = Order.find(params[:order][:order_id])
    @order.shipping_address = order_params[:shipping_address]
  end

  private

  def order_params
    allowed = params.require(:order).permit(:billing_details, :status, :shipping_address, :order_id)
    allowed[:status] = allowed[:status].to_i
    allowed
  end
end
