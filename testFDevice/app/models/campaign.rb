class Campaign < ActiveRecord::Base
	mount_uploader :campimg, CampimgUploader
	acts_as_taggable
	belongs_to :user
	has_many :articles

	def image_name
		File.basename(campimg.path|| campimg.filename) if campimg
	end
	
end
