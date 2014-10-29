class User < ActiveRecord::Base
	validates_inclusion_of :user_type, in:Choices['user_type']
    belongs_to :team

end
