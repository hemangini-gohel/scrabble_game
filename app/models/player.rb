class Player < ApplicationRecord
  belongs_to :member
  belongs_to :game
end
