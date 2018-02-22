class DropTodos < ActiveRecord::Migration[5.1]
  def up
    drop_table :todos
  end
  def down

  create_table "todos", force: :cascade do |t|
    t.string "nam"
    t.string "description"
    t.integer "duration"
    t.date "deadline"
    t.string "color"
    t.timestamps
  end
end

end
