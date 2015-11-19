class AddAppointmentId < ActiveRecord::Migration
  def change
    add_reference :appointments, :service, index: true
  end
end
