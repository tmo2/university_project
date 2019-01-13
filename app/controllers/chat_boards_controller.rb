class ChatBoardsController < ApplicationController
  def index
    @chat_boards = ChatBoard.all
  end
end
