class AppointmentsController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @service = Service.find(params[:service_id])
    @appointments = @service.appointments.all
  end

  def new
    @service = Service.find(params[:service_id])
    @appointment = Appointment.new
  end

  def create
    @service = Service.find(params[:service_id])
    @appointment = @service.appointments.build(appointment_params)
    @appointment.user = current_user

    @appointment.save!

    redirect_to service_appointment_path(@service, @appointment)
  end

  def show
    @user = current_user
    @appointments = Appointment.where(user_id: @user)
    
  end

  def edit
    @service = Service.find(params[:service_id])
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
  end

  def destroy
    @appointment = Appointment.find(params[:id])
  end

  private
    def appointment_params
      params.require(:appointment).permit(:start_time, :end_time)
    end

end
