class PagesController < ApplicationController
  def home
    @serving_styles = ServingStyle.all
  end  
    helper_method :pages_path
  def pages_path
  end

  def contact
  end

  def step1
    @order = Order.new
  	@serving_styles = ServingStyle.all
  	@tea_bases = TeaBase.all
  	@tea_base_types=TeaBaseType.all
  end
  
  def update_tea_bases
    # updates tea_bases and tbt based on servingstyle selected
    @serving_style = ServingStyle.find(params[:serving_style_id])
    # map to name and id for use in our options_for_select
    @tea_bases = @serving_style.tea_bases
  end
 
  def update_tea_base_types
    # updates tbt based on teabase selected
    tea_base = TeaBase.find(params[:tea_base_id])
    @tea_base_types = tea_base.tea_base_types
    
    
  end
  
  
  
  
  
  
  
  
  
  def tea_bases
    serving_style = ServingStyle.find(params[:serving_style_id])
    respond_to do |format|
      format.json { render :json => serving_style.tea_bases }
    end
  end

  def step2
  	#@serving_style = params[:serving_style]
  	#@order = Order.new
  	#@order.serving_style = @serving_style
  	#@order.save
  	@flavours = Flavour.all
  end

  def step4
  	@themes = Theme.all
  	@labels = Label.all
  end

  def step3
  	@packagings = Packaging.all
  end

  def step5
  end
  
end
