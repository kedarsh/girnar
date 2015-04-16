class TeaBasesController < ApplicationController
  before_action :set_tea_bases, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tea_bases = TeaBase.all
    respond_with(@tea_bases)
  end

  def show
    respond_with(@tea_bases)
  end

  def new
    @tea_bases = TeaBase.new
    respond_with(@tea_bases)
  end

  def edit
  end

  def create
    @tea_bases = TeaBase.new(tea_base_params)
    @tea_bases.save
    respond_with(@tea_bases)
  end

  def update
    @tea_bases.update(tea_base_params)
    respond_with(@tea_bases)
  end

  def destroy
    @tea_bases.destroy
    respond_with(@tea_bases)
  end

  private
    def set_tea_bases
      @tea_bases = TeaBase.find(params[:id])
    end

    def tea_bases_params
      params.require(:tea_bases).permit(:name, :price, :description, :info, :no_of_flavours, :serving_style_id)
    end
end
