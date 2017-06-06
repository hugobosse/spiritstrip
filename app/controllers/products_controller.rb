class ProductsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [ :index, :show]
  def index
    @products = Product.all.order(created_at: :asc)
  end

  def show
    @product = Product.find(params[:id])
  end

end
