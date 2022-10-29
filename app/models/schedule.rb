class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  validates :time, :duration, :user, :lesson , presence: true
end
