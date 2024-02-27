class RenameColumnsInEmployees < ActiveRecord::Migration[7.1]
  def change
    rename_column :employees, :firstname, :firstName
    rename_column :employees, :lastname, :lastName
  end
end
