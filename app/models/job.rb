class Job < ApplicationRecord
  validates :position, presence: true
  validates :number_of_positions, presence: true
  validates :open_date, presence: true
  validates :close_date, presence: true
  validates :duties_and_responsibilities, presence: true
  validates :requirements, presence: true
  validates :attention, presence: true
  validates :order, presence: true, numericality: { only_integer: true }
end
