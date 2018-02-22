class AddNameAndDescriptionAndDurationToTodo < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :nam, :string
    add_column :todos, :description, :string
    add_column :todos, :duration, :integer
  end
end
