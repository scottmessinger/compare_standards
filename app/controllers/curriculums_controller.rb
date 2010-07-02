class CurriculumsController < ApplicationController
  # before_filter :login_required  
  def index    
  end
  
  def show
    state = params[:state]
    grade = params[:grade].to_i
    if state
      @state_standards = state.classify.constantize.where(:grade => grade).sort(:standard_number).all
      @state = state.capitalize
    end
    render "#{@state.to_s.downcase}" , :layout => false
    
  end
end
