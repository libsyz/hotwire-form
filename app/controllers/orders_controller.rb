class OrdersController < ApplicationController

  def new
    @order = params[:order_id] ? Order.find(params[:order_id]) : Order.new
    binding.pry
  end

  def billing
    binding.pry
    if permitted_params[:order_id]
      @order = Order.find(permitted_params[:order_id])
      @order.update(billing_details: permitted_params[:billing_details])
    else
      @order = Order.new(permitted_params)
      @order.save
    end
  end

  def shipping
    @order = Order.find(permitted_params[:order_id])
    @order.shipping_address = permitted_params[:shipping_address]
    @order.save
  end

  private

  def permitted_params
    allowed = params.require(:order).permit(:billing_details, :status, :shipping_address, :order_id)
    allowed[:status] = allowed[:status].to_i
    allowed
  end
end
