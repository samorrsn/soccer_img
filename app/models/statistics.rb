class Statistics < ActiveRecord::Base
	belongs_to :user
    belongs_to :team
    has_many   :event
end
