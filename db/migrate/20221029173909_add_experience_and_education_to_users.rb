class AddExperienceAndEducationToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :experience, :string
    add_column :users, :education, :string
  end
end
