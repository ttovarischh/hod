class AddInitiativeStateToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :fight, :boolean, :default => false
  end
end
