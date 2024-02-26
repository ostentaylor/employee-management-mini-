class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.integer :employee_number
      t.float :salary
      t.string :email

      t.timestamps
    end
  end
end
