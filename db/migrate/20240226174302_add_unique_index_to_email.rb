class AddUniqueIndexToEmail < ActiveRecord::Migration[7.1]
  def change
    add_index :employees, :email, unique: true
  end
end
