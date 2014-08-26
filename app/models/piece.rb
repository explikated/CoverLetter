class Piece < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  def next
    Piece.find(self.id + 1)
  end
  
  def previous
    Piece.find(self.id - 1)
  end
  
  def is_last
    if self.id = Piece.all.count
		return true
	end
  end
  
end
