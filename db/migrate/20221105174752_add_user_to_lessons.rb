class AddUserToLessons < ActiveRecord::Migration[7.0]
  def change
    add_reference :lessons, :user, foreign_key: true
  end
end
