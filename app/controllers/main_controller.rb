class MainController < ApplicationController
  layout "main"
  def index
    @maryland = Maryland.all
  end
end