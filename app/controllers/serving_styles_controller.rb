class ServingStylesController < ApplicationController
  before_action :set_serving_style, only: [:show, :edit, :update, :destroy]

  # GET /serving_styles
  # GET /serving_styles.json
  def index
    @serving_styles = ServingStyle.all
  end

  # GET /serving_styles/1
  # GET /serving_styles/1.json
  def show
  end

  # GET /serving_styles/new
  def new
    @serving_style = ServingStyle.new
  end

  # GET /serving_styles/1/edit
  def edit
  end

  # POST /serving_styles
  # POST /serving_styles.json
  def create
    @serving_style = ServingStyle.new(serving_style_params)

    respond_to do |format|
      if @serving_style.save
        format.html { redirect_to @serving_style, notice: 'Serving style was successfully created.' }
        format.json { render :show, status: :created, location: @serving_style }
      else
        format.html { render :new }
        format.json { render json: @serving_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serving_styles/1
  # PATCH/PUT /serving_styles/1.json
  def update
    respond_to do |format|
      if @serving_style.update(serving_style_params)
        format.html { redirect_to @serving_style, notice: 'Serving style was successfully updated.' }
        format.json { render :show, status: :ok, location: @serving_style }
      else
        format.html { render :edit }
        format.json { render json: @serving_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serving_styles/1
  # DELETE /serving_styles/1.json
  def destroy
    @serving_style.destroy
    respond_to do |format|
      format.html { redirect_to serving_styles_url, notice: 'Serving style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  #GET /get_drop_down_options_tea_bases
  # to get tea_bases for the selected serving style
  def get_drop_down_options_tea_bases
    val = params[:id]
    #Use val to find records
    @tea_bases = ServingStyle.find(val).tea_bases
    options = @tea_bases.collect{|x| "'#{x.id}' : '#{x.name}'"}    
    render :text => "{#{options.join(",")}}" 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serving_style
      @serving_style = ServingStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serving_style_params
      params.require(:serving_style).permit(:name, :description)
    end
    
    
end
