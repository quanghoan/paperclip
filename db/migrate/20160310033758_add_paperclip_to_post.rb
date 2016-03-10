class AddPaperclipToPost < ActiveRecord::Migration
  def change
  	def up
    add_attachment :posts, :image
  	end

	  def down
	    remove_attachment :posts, :image
	  end
  end
end
