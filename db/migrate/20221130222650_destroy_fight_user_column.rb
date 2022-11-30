class DestroyFightUserColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :fight
  end
end
