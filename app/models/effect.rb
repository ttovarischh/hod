class Effect < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :player_effects
    has_many :players, through: :player_effects
end
