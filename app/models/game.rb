class Game < ApplicationRecord
  
  attr_accessor :player1_id, :player1_score, :player2_id, :player2_score
  
  has_many :players, dependent: :destroy  
  validates :name, :start_date, :end_date, presence: true
  after_save :add_update_players

  def add_update_players
    
    Game.find(self.id).players.delete_all
    
    Player.create(member_id: self.player1_id, game_id: self.id, score: self.player1_score, status: set_status(self.player1_score, self.player2_score))
    Player.create(member_id: self.player2_id, game_id: self.id, score: self.player2_score, status: set_status(self.player2_score, self.player1_score))
  end

  def set_status(score1, score2)
    return score1 > score2 ? 'win' : 'loose'
  end
end
