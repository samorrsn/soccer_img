class Team < ActiveRecord::Base
    attr_accessor :name, :mascot
    validates :name, :mascot, presence: true
end
