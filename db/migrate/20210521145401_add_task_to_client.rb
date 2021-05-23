class AddTaskToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :task, :string
  end
end
