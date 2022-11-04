class Lesson < ApplicationRecord
  has_many :schedules
  has_one_attached :photo

include PgSearch::Model

  pg_search_scope :search_bar_lessons,
  against: [ :name, :description ],
  using: {
    tsearch: { prefix: true}
  }
end
