class RemoveUserFromSchedule < ActiveRecord::Migration[7.0]
  def change
    remove_reference :schedules, :user
  end
end
