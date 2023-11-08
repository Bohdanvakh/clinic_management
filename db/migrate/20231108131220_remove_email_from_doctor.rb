class RemoveEmailFromDoctor < ActiveRecord::Migration[7.0]
  def up
    add_column :doctors, :email, :string
  end

  def down
    remove_column :doctors, :email
  end
end
