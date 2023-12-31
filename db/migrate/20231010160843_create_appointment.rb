class CreateAppointment < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
      t.boolean :active_status

      t.timestamps
    end
  end
end
