class OrdersController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:create, :show]

  def create
    @product = Product.find(params[:product_id])
    order  = Order.create!(product_sku: @product.sku, amount: @product.price, state: 'pending')

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end
end
