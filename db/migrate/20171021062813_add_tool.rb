class AddTool < ActiveRecord::Migration[5.1]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :link
    end

    create_table :comments do |t|
      t.string :content
      t.integer :user_id
    end

    create_table :ratings do |t|
      t.integer :user_id
      t.integer :tool_id
      t.string :name
      t.integer :value
    end
  end
end
