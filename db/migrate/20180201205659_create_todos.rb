class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.text :description
      t.datetime :due
      t.datetime :completed

      t.timestamps
    end
  end
end
