class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def show
    respond_with(@order)
  end

  def new
    @order = Order.new
    @serving_styles = ServingStyle.all
    @tea_bases = TeaBase.all
    @flavours = Flavour.all
    @packagings = Packaging.all
    @labels = Label.all
    
    respond_with(@order)
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.status = "pending"
    @order.save
    respond_with(@order)
  end

  def update
    @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:user_id, :serving_style_id, :base_id, :flavour_id, :packaging_id, :label_id, :blend_name, :message, :status)
    end
end
