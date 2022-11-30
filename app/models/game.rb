class Game < ApplicationRecord
    validates_uniqueness_of :name
    def to_param
        code
    end
    has_many :players
    has_many :monsters
end
