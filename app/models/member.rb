class Member < ApplicationRecord
  has_many :players, dependent: :destroy
  validates :first_name, :last_name, :email, :contact_number , presence: true
  validates :contact_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
end
