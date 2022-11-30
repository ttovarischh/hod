class AddGameToMonsters < ActiveRecord::Migration[5.2]
  def change
    add_reference :monsters, :game, foreign_key: true
  end
end
