class PiecesController < ApplicationController

  def index
    @pieces = Piece.all
  end 

  def show
    @pieces = Piece.all
    @piece = Piece.find(params[:id])
  end
  
  def new
	@piece = Piece.new
  end
   
  def create
	@piece = Piece.new(piece_params)
	if @piece.save
		redirect_to @piece
	else
		render 'new'
	end
  end
  
  def piece_params
	params.require(:piece).permit(:name, :story, :box, :photo_path, :brand)
  end
end
