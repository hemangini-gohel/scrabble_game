class MembersController < ApplicationController

  before_action :find_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all
  end

  def show
    @no_of_win = @member.players.where(status: 'win').count
    @no_of_loose = @member.players.where(status: 'loose').count
    @member_data = Player.where(member_id: @member.id)
    @average_score = @member_data.average('players.score').to_i
    @highest_score_data = @member_data.order("score DESC").first    
    
    if @highest_score_data
      @data = Player.where(game_id: @highest_score_data.game_id).where.not(id: @highest_score_data.id).first
      @second_player = Member.find(@data.member_id)
    end
  end

  def new
    @member = Member.new
  end

  def edit;end

  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:success] = "Member added successfully."
      redirect_to members_path
    else
      flash[:danger] = "Member not added"
      render 'new'
    end
  end

  def update

      if @member.update(member_params)
        flash[:success] = "Member updated successfully."
        redirect_to members_path
      else
        flash[:danger] = "Member not updated"
        render 'edit'
      end

  end

  def destroy    
    if @member.destroy
      flash[:success] = "Member deleted successfully."
      redirect_to members_path
    else
      flash[:danger] = "Member not deleted."
      redirect_to members_path
    end    
  end

  private    
    def find_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:first_name, :last_name, :email, :contact_number)
    end

end
