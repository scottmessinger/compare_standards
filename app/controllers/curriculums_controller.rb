class CurriculumsController < ApplicationController
  # before_filter :login_required  
  def index    
  end
  
  def show
    if(params[:state])
      @state_standards = params[:state].classify.constantize.all
      @state = params[:state].capitalize
    end
    render "#{@state.to_s.downcase}", :layout => false
    
  end
end
