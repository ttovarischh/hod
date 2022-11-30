class UpdateStatusDefaultUserConc < ActiveRecord::Migration[5.2]
  def change
    change_column :players, :conc, :boolean, :default => false
  end
end
