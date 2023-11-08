class RemoveEmailFromDevise < ActiveRecord::Migration[7.0]
  def change
    change_column :patients, :email, :string
    change_column :users, :email, :string
  end
end
