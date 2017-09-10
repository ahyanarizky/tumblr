class RenameColumnTitltToTitle < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :titlt, :title
  end
end
