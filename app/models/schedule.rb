class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  validates :date, :time, :duration , presence: true
  validates :user, :lesson, presence: true
end
