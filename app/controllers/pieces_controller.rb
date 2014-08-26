class PiecesController < ApplicationController

  def index
    @pieces = Piece.all
  end 

  def show
    @pieces = Piece.all
    @piece = Piece.find(params[:id])
  end
   
end
