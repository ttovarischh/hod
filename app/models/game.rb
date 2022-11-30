class Game < ApplicationRecord
    validates_uniqueness_of :name
    def to_param
        code
    end
end
