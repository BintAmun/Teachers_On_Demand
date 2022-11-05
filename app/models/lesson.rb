class Lesson < ApplicationRecord
  has_many :schedules, dependent: :destroy
  has_one_attached :photo
  belongs_to :user

include PgSearch::Model

  pg_search_scope :search_bar_lessons,
  against: [ :name, :description ],
  using: {
    tsearch: { prefix: true}
  }
end
