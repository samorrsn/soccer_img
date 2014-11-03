class TeamMember < ActiveRecord::Base
    attr_accessor :display_name
    validates :display_name presence: true
end
