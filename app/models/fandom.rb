class Fandom < ApplicationRecord
    belongs_to :author
    belongs_to :category
    has_many :fandom_character
end