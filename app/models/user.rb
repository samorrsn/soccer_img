class User < ActiveRecord::Base
	validates_inclusion_of :user_type, in:Choices['user_type']
    has_one :team
    has_many :positions

end
