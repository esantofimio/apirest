class RemoveColorFromTodos < ActiveRecord::Migration[5.1]
  def change
    remove_column :todos, :color, :string
  end
end
