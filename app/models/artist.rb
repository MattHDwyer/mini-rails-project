class Artist < ApplicationRecord
    has_many :albums
    has_many :artist_comements
end
