class Vehicle < ApplicationRecord
  validates_presence_of :model, :brand, :plate, :model_year, :manufacture_year
  validates_numericality_of :model_year, :manufacture_year
  validates_length_of :plate, is: 7
  has_many :bookings

  def name
    "#{self.brand} - #{self.model} - #{self.model_year}"
  end
end