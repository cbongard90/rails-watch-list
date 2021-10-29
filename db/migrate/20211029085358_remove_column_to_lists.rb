class RemoveColumnToLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :picture_url, :string
  end
end
