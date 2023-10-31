class Fandom < ApplicationRecord
    belongs_to :author
    belongs_to :category
    has_many :fandom_character
    has_many :comment
    mount_uploader :fandom_image, FandomImageUploader
end