class Employee < ApplicationRecord
    # Validations
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :employee_number, presence: true, uniqueness: true
    validates :salary, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
  