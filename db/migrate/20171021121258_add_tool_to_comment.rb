class AddToolToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :tool_id, :integer    
  end
end
