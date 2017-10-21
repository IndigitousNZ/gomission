class AddTagsToTools < ActiveRecord::Migration[5.1]
  create_table :tags do |t|
    t.string :name
    t.integer :tool_id
  end
end
