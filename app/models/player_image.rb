class PlayerImage < ActiveRecord::Base
		belongs_to :team_player
	mount_uploader :image, PlayerImageUploader
end
