class Post < ActiveRecord::Base
	validates :image, presence: true

	#re-sizing the image - Instagram 640px wide, tall images is fine
	has_attached_file :image, styles: { :medium => "640x"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
