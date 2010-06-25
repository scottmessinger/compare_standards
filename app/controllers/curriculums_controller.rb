class CurriculumsController < ApplicationController
  before_filter :login_required  
  def index    
  end
  
  def show
    if(params[:state])
      @maryland = params[:state].classify.constantize.all
    end
  end
end
