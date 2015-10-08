class OrdersController < ApplicationController
  # before_filter :authorize_admin, only: :index
  load_and_authorize_resource

  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
  end

  # def authorize_admin
  #   redirect_to :back, :status => 401 unless current_user.admin
  #   #redirects to previous page
  # end

  private

    def order_params
     params.require(:order).permit(:user_id, :product_id, :total)
    end

end