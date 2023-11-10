class AddRecomendationToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :recommendation, :string
  end
end
