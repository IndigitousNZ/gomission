class AddImageLink < ActiveRecord::Migration[5.1]
  def change
    add_column :tools, :image_url, :string
  end
end
