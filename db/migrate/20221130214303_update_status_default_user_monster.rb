class UpdateStatusDefaultUserMonster < ActiveRecord::Migration[5.2]
  def change
    change_column :players, :monster, :boolean, :default => false
  end
end
