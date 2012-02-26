class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :list_id
      t.integer :user_id
      t.string :name
      t.text :description
      t.datetime :due_at
      t.datetime :completed_at

      t.timestamps
    end
  end
end
