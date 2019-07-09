class AlbumTrack < ApplicationRecord
  belongs_to :track
  belongs_to :album
end
