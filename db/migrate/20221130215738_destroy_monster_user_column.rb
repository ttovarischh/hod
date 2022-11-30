class DestroyMonsterUserColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :monster
  end
end
