class Game < ApplicationRecord
    validates_uniqueness_of :name
    def to_param
        # [id, code.parameterize].join("-")
        code.parameterize
    end

    def self.find_by_param(code)
        find_by_code(code)
      end
    has_many :players
    has_many :monsters
end
