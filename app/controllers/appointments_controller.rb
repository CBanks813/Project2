class AppointmentsController < ApplicationController

  def index

  end

  def new
    @appointment = Appointment.new
  end

  def create
  end
end