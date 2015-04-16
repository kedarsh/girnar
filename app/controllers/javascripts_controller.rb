class JavascriptsController < ApplicationController
  def dynamic_states
    @tea_bases = tea_base.find(:all)
  end
end
