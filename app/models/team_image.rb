class TeamImage < ActiveRecord::Base
	belongs_to :team
	mount_uploader :image, TeamPhotoUploader
end
