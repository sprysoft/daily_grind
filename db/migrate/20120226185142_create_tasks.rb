class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :list_id
      t.integer :user_id, :null => false
      t.string :name,     :null => false
      t.text :description
      t.datetime :due_at
      t.datetime :completed_at

      t.timestamps
    end

    add_index :tasks, :list_id
    add_index :tasks, :user_id
  end
end
