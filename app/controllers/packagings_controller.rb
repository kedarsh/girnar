class PackagingsController < ApplicationController
  before_action :set_packaging, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @packagings = Packaging.all
    respond_with(@packagings)
  end

  def show
    respond_with(@packaging)
  end

  def new
    @packaging = Packaging.new
    respond_with(@packaging)
  end

  def edit
  end

  def create
    @packaging = Packaging.new(packaging_params)
    @packaging.save
    respond_with(@packaging)
  end

  def update
    @packaging.update(packaging_params)
    respond_with(@packaging)
  end

  def destroy
    @packaging.destroy
    respond_with(@packaging)
  end

  private
    def set_packaging
      @packaging = Packaging.find(params[:id])
    end

    def packaging_params
      params.require(:packaging).permit(:name)
    end
end
