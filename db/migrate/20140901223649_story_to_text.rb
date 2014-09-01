class StoryToText < ActiveRecord::Migration
	def up
		change_column :pieces, :story, :text
	end
	def down
		# This might cause trouble if you have strings longer
		# than 255 characters.
		change_column :pieces, :story, :string
	end
end
