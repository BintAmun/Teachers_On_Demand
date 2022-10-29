class Lesson < ApplicationRecord
validates :date, :time, :duration , presence: true
validates :user, :lesson, presence: true
end
