class DealsController < ApplicationController

  def show
    @deal = Deal.find(params[:id])
    @requester = @deal.requester
    @contractor = @deal.contractor
    @post = @deal.post
    @chat_board = @requester.boards.joins(:board_user_relation).having("board_user_relations.user_id = ?", @contractor.id)&.first.presence || ChatBoard.new
    if @deal.requester_id == current_user.id
      @deal_treat = 'request'
    elsif @deal.contractor_id == current_user.id
      @deal_treat = 'contract'
    else
      redirect_to root_path
    end
  end

  def create
    binding.pry
    deal = Deal.create(deal_params)
    redirect_to deal_path(deal)
  end

  private

  def deal_params
    params.require(:deal).permit(:post_id, :requester_id, :contractor_id)
  end
end
