class Piece < ActiveRecord::Base
  validates :name, presence: true
  validates :brand, presence: true
  validates :box, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
  validates :story, presence: true
  validates :photo,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
    attachment_size: { less_than: 5.megabytes }
	
  # This method associates the attribute ":photo" with a file attachment
  has_attached_file :photo,
    :styles => {
      :medium => "400x400#"},
    :storage => :s3,
	:bucket => 'kdrams-rb-coverletter',
	:s3_credentials => "#{Rails.root}/config/s3.yml"
  
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
