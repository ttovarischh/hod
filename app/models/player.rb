class Player < ApplicationRecord
    belongs_to :game
    has_many :player_effects
    has_many :effects, through: :player_effects

    def self.tagged_with(name)
        Effect.find_by!(name: name).players
    end
    
    def self.tag_counts
        Effect.select('effects.*, count(player_effects.effect_id) as count').joins(:player_effects).group('player_effects.effect_id')
    end
    
    def tag_list
        effects.map(&:name).join(', ')
    end
    
    def tag_list=(names)
        self.tags = names.split(',').map do |n|
          Effect.where(name: n.strip).first_or_create!
        end
    end
end
