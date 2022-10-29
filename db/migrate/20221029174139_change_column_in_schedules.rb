class ChangeColumnInSchedules < ActiveRecord::Migration[7.0]
  def change
    remove_column :schedules, :date
    change_column :schedules, :time, :text
  end
end
