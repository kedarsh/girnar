class TeaBaseTypesController < ApplicationController
  before_action :set_tea_base_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tea_base_types = TeaBaseType.all
    respond_with(@tea_base_types)
  end

  def show
    respond_with(@tea_base_type)
  end

  def new
    @tea_base_type = TeaBaseType.new
    respond_with(@tea_base_type)
  end

  def edit
  end

  def create
    @tea_base_type = TeaBaseType.new(tea_base_type_params)
    @tea_base_type.save
    respond_with(@tea_base_type)
  end

  def update
    @tea_base_type.update(tea_base_type_params)
    respond_with(@tea_base_type)
  end

  def destroy
    @tea_base_type.destroy
    respond_with(@tea_base_type)
  end

  private
    def set_tea_base_type
      @tea_base_type = TeaBaseType.find(params[:id])
    end

    def tea_base_type_params
      params.require(:tea_base_type).permit(:name, :description, :price, :tea_base_id)
    end
end
