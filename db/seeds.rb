# Create Users
#   Users can be thought of as an account, which is independant of any Coach or Player
User.create("first_name"=>"John", "last_name"=>"Doe", "user_type"=>"member")
# Create Teams
Team.create("name"=>"Tigers", "mascot"=>"Tiger")
Team.create("name"=>"Sharks", "mascot"=>"Goldfish")
# Currently this is a general position title list shared by all teams
Position.create("title"=>"Goalkeeper")
Position.create("title"=>"Defender")
Position.create("title"=>"Mid-Fielder")
Position.create("title"=>"Forward")
# Create TeamMember 1
TeamMember.create("team_id"=>1, "user_id"=>1, "is_coach"=>nil, "member_first_name"=>"Johnathon", "member_last_name"=>"Doe")
PlayerPosition.create("team_member_id"=>1, "position_id"=>1)
PlayerPosition.create("team_member_id"=>1, "position_id"=>2)
TeamMemberAvailability.create("team_member_id"=>1, "isAvailable"=>true, "date"=>Date.new(2014, 11, 5), "from_time"=>"10:30", "till_time"=>"11:45")
TeamMemberAvailability.create("team_member_id"=>1, "isAvailable"=>true, "date"=>Date.new(2014, 11, 10), "from_time"=>"5:15", "till_time"=>"15:10")
TeamMemberAvailability.create("team_member_id"=>1, "isAvailable"=>false, "date"=>Date.new(2014, 11, 15), "from_time"=>"9:10", "till_time"=>"13:05")
# Create TeamMember 2
TeamMember.create("team_id"=>1, "user_id"=>nil, "is_coach"=>nil, "member_first_name"=>"Justin", "member_last_name"=>"Kase")
PlayerPosition.create("team_member_id"=>2, "position_id"=>1)
# Create TeamMember 3
TeamMember.create("team_id"=>1, "user_id"=>nil, "is_coach"=>nil, "member_first_name"=>"Tearzov", "member_last_name"=>"Joy")
PlayerPosition.create("team_member_id"=>3, "position_id"=>3)
PlayerPosition.create("team_member_id"=>3, "position_id"=>2)
PlayerPosition.create("team_member_id"=>3, "position_id"=>4)
PlayerPosition.create("team_member_id"=>3, "position_id"=>1)
TeamMemberAvailability.create("team_member_id"=>1, "isAvailable"=>false, "date"=>Date.new(2014, 11, 28), "from_time"=>"2:45", "till_time"=>"6:20")
TeamMemberAvailability.create("team_member_id"=>1, "isAvailable"=>false, "date"=>Date.new(2014, 11, 7), "from_time"=>"10:30", "till_time"=>"18:30")
# Create TeamMember 4
TeamMember.create("team_id"=>2, "user_id"=>nil, "is_coach"=>nil, "member_first_name"=>"Joe", "member_last_name"=>"Beast")
PlayerPosition.create("team_member_id"=>4, "position_id"=>1)
PlayerPosition.create("team_member_id"=>4, "position_id"=>2)
