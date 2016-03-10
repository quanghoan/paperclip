class Post < ActiveRecord::Base
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
	# Ta cũng có thể gộp 3 điều kiện trên: 
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
	# size: { in: 0..100.kilobytes }
end
