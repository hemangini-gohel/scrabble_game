class LeaderBoardsController < ApplicationController
  def index
    @members = Member.joins(:players).select("members.*,avg(players.score) as avg_score").group('members.id').having('count(players.id)>=10').order("avg_score DESC").first(10)
  end
end
