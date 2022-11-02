class Lesson < ApplicationRecord
  has_many :schedules
  has_one_attached :photo
end
