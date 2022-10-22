class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.references :teacher, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
