class AddPaperclipToPost < ActiveRecord::Migration
  def change
  	def up
    	add_attachment :posts, :image
    	add_attachment :posts, :video
  	end

	  def down
	    remove_attachment :posts, :image
	    remove_attachment :posts, :video
	  end
  end
end
