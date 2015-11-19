class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    # will this be used?
  end




end
