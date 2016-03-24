class Article < ActiveRecord::Base
	validates :title, presence:true, 
					  length: {minimum:5}
	validates :text, presence:true
	belongs_to :user
	belongs_to :campaign
mount_uploader :video, VideoUploader
end
