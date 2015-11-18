class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :start_time
      t.integer :end_time

      t.timestamps 
    end
  end
end
