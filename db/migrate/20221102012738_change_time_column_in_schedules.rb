class ChangeTimeColumnInSchedules < ActiveRecord::Migration[7.0]
  def change
    change_column :schedules, :time, :string
  end
end
