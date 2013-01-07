class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id]) # p.344
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      # send email
      redirect_to @order
    else
      render 'new'
    end
  end
end
