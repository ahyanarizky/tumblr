class RenameTitltToTitle < ActiveRecord::Migration[5.1]
  def change
  end
  def self.up
    rename_table :titlt, :title
  end

  def self.down
    rename_table :title, :titlt
  end
end
