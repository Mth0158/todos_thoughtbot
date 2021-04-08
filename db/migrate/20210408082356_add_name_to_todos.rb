class AddNameToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :name, :string
  end
end
