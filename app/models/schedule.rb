class Schedule < ApplicationRecord
  belongs_to :lesson
  validates :time, :duration, :lesson , presence: true
end
