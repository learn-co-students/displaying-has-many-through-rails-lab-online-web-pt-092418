class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
  def to_s
    "Name: #{self.name} Number of Appointments: #{self.appointments.count}"
  end
end
