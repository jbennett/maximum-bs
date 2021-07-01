class GameParticipant < ApplicationRecord
  belongs_to :game
  belongs_to :snake
end
