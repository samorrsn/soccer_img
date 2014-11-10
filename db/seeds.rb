# Create Users
#   Users can be thought of as an account, which is independant of any Coach or Player
User.create("first_name"=>"John", "last_name"=>"Doe", "user_type"=>"member", "email"=>"john@doe.com", "password"=>"111111", "password_confirmation"=>"111111")
# Create Teams
Team.create("name"=>"Tigers", "mascot"=>"Tiger")
Team.create("name"=>"Sharks", "mascot"=>"Goldfish")
# Currently this is a general position title list shared by all teams
Position.create("title"=>"Goalkeeper")
Position.create("title"=>"Defender")
Position.create("title"=>"Mid-Fielder")
Position.create("title"=>"Forward")
# Create TeamMember 1
TeamPlayer.create("team_id"=>1, "user_id"=>1, "member_first_name"=>"Johnathon", "member_last_name"=>"Doe")
PlayerPosition.create("team_member_id"=>1, "position_id"=>1)
PlayerPosition.create("team_member_id"=>1, "position_id"=>2)
TeamMemberAvailability.create("team_member_id"=>1, "is_available"=>true, "date"=>Date.new(2014, 11, 5), "from_time"=>"10:30", "till_time"=>"11:45")
TeamMemberAvailability.create("team_member_id"=>1, "is_available"=>true, "date"=>Date.new(2014, 11, 10), "from_time"=>"5:15", "till_time"=>"15:10")
TeamMemberAvailability.create("team_member_id"=>1, "is_available"=>false, "date"=>Date.new(2014, 11, 15), "from_time"=>"9:10", "till_time"=>"13:05")
# Create TeamMember 2
TeamPlayer.create("team_id"=>1, "user_id"=>nil, "member_first_name"=>"Justin", "member_last_name"=>"Kase")
PlayerPosition.create("team_member_id"=>2, "position_id"=>1)
# Create TeamMember 3
TeamPlayer.create("team_id"=>1, "user_id"=>nil, "member_first_name"=>"Tearzov", "member_last_name"=>"Joy")
PlayerPosition.create("team_member_id"=>3, "position_id"=>3)
PlayerPosition.create("team_member_id"=>3, "position_id"=>2)
PlayerPosition.create("team_member_id"=>3, "position_id"=>4)
PlayerPosition.create("team_member_id"=>3, "position_id"=>1)
TeamMemberAvailability.create("team_member_id"=>1, "is_available"=>false, "date"=>Date.new(2014, 11, 28), "from_time"=>"2:45", "till_time"=>"6:20")
TeamMemberAvailability.create("team_member_id"=>1, "is_available"=>false, "date"=>Date.new(2014, 11, 7), "from_time"=>"10:30", "till_time"=>"18:30")
# Create TeamMember 4
TeamPlayer.create("team_id"=>2, "user_id"=>nil, "member_first_name"=>"Joe", "member_last_name"=>"Beast")
PlayerPosition.create("team_member_id"=>4, "position_id"=>1)
PlayerPosition.create("team_member_id"=>4, "position_id"=>2)
# Create TeamCoach
TeamCoach.create("team_id"=>2, "user_id"=>1, "member_first_name"=>"John", "member_last_name"=>"Doe")
# Create Notes
Note.create("team_player_id"=>2, "team_coach_id"=>1, "note_text"=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur cursus sem at ipsum bibendum, sed congue arcu auctor. Praesent id ante congue purus mattis pretium. Vestibulum in turpis quam. Aenean vitae ultricies lectus. Morbi bibendum fermentum porta. In tincidunt hendrerit nulla, ut vulputate augue sollicitudin quis. Sed sollicitudin urna quis aliquam laoreet. Integer accumsan lacus turpis, vel molestie ex venenatis et. Nullam tincidunt iaculis augue, a porta justo volutpat quis. Donec pharetra ipsum sit amet risus sodales, sed facilisis nulla commodo. Mauris libero lacus, tempus eu varius quis, euismod vitae magna. Sed dignissim orci neque. Integer convallis sapien velit, eget commodo velit sollicitudin in. Curabitur vitae elit rutrum, egestas neque non, sollicitudin justo. Maecenas ipsum diam, sagittis sed lectus sit amet, maximus viverra enim. Aliquam sed ultrices eros, non pellentesque leo.

Mauris aliquet ipsum magna, non rutrum justo tempus vel. Praesent non vulputate tortor. Aenean porttitor urna dui, et venenatis nunc aliquet pharetra. Integer consequat erat non molestie elementum. Nam at tincidunt sapien. Suspendisse tincidunt, justo at scelerisque convallis, nulla ante viverra leo, sit amet vehicula neque ligula in libero. Pellentesque ac purus quam. Phasellus non venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus id consequat ex. Vestibulum consectetur enim velit, nec ullamcorper nunc malesuada a. Donec in turpis molestie, vulputate lectus a, bibendum dolor. Proin mattis ligula non urna hendrerit, eu molestie tellus semper.")
Note.create("team_player_id"=>1, "team_coach_id"=>1, "note_text"=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur cursus sem at ipsum bibendum, sed congue arcu auctor. Praesent id ante congue purus mattis pretium. Vestibulum in turpis quam. Aenean vitae ultricies lectus. Morbi bibendum fermentum porta. In tincidunt hendrerit nulla, ut vulputate augue sollicitudin quis. Sed sollicitudin urna quis aliquam laoreet. Integer accumsan lacus turpis, vel molestie ex venenatis et. Nullam tincidunt iaculis augue, a porta justo volutpat quis. Donec pharetra ipsum sit amet risus sodales, sed facilisis nulla commodo. Mauris libero lacus, tempus eu varius quis, euismod vitae magna. Sed dignissim orci neque. Integer convallis sapien velit, eget commodo velit sollicitudin in. Curabitur vitae elit rutrum, egestas neque non, sollicitudin justo. Maecenas ipsum diam, sagittis sed lectus sit amet, maximus viverra enim. Aliquam sed ultrices eros, non pellentesque leo.

Mauris aliquet ipsum magna, non rutrum justo tempus vel. Praesent non vulputate tortor. Aenean porttitor urna dui, et venenatis nunc aliquet pharetra. Integer consequat erat non molestie elementum. Nam at tincidunt sapien. Suspendisse tincidunt, justo at scelerisque convallis, nulla ante viverra leo, sit amet vehicula neque ligula in libero. Pellentesque ac purus quam. Phasellus non venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus id consequat ex. Vestibulum consectetur enim velit, nec ullamcorper nunc malesuada a. Donec in turpis molestie, vulputate lectus a, bibendum dolor. Proin mattis ligula non urna hendrerit, eu molestie tellus semper.")
Note.create("team_player_id"=>3, "team_coach_id"=>1, "note_text"=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur cursus sem at ipsum bibendum, sed congue arcu auctor. Praesent id ante congue purus mattis pretium. Vestibulum in turpis quam. Aenean vitae ultricies lectus. Morbi bibendum fermentum porta. In tincidunt hendrerit nulla, ut vulputate augue sollicitudin quis. Sed sollicitudin urna quis aliquam laoreet. Integer accumsan lacus turpis, vel molestie ex venenatis et. Nullam tincidunt iaculis augue, a porta justo volutpat quis. Donec pharetra ipsum sit amet risus sodales, sed facilisis nulla commodo. Mauris libero lacus, tempus eu varius quis, euismod vitae magna. Sed dignissim orci neque. Integer convallis sapien velit, eget commodo velit sollicitudin in. Curabitur vitae elit rutrum, egestas neque non, sollicitudin justo. Maecenas ipsum diam, sagittis sed lectus sit amet, maximus viverra enim. Aliquam sed ultrices eros, non pellentesque leo.

Mauris aliquet ipsum magna, non rutrum justo tempus vel. Praesent non vulputate tortor. Aenean porttitor urna dui, et venenatis nunc aliquet pharetra. Integer consequat erat non molestie elementum. Nam at tincidunt sapien. Suspendisse tincidunt, justo at scelerisque convallis, nulla ante viverra leo, sit amet vehicula neque ligula in libero. Pellentesque ac purus quam. Phasellus non venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus id consequat ex. Vestibulum consectetur enim velit, nec ullamcorper nunc malesuada a. Donec in turpis molestie, vulputate lectus a, bibendum dolor. Proin mattis ligula non urna hendrerit, eu molestie tellus semper.")
Note.create("team_player_id"=>1, "team_coach_id"=>1, "note_text"=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur cursus sem at ipsum bibendum, sed congue arcu auctor. Praesent id ante congue purus mattis pretium. Vestibulum in turpis quam. Aenean vitae ultricies lectus. Morbi bibendum fermentum porta. In tincidunt hendrerit nulla, ut vulputate augue sollicitudin quis. Sed sollicitudin urna quis aliquam laoreet. Integer accumsan lacus turpis, vel molestie ex venenatis et. Nullam tincidunt iaculis augue, a porta justo volutpat quis. Donec pharetra ipsum sit amet risus sodales, sed facilisis nulla commodo. Mauris libero lacus, tempus eu varius quis, euismod vitae magna. Sed dignissim orci neque. Integer convallis sapien velit, eget commodo velit sollicitudin in. Curabitur vitae elit rutrum, egestas neque non, sollicitudin justo. Maecenas ipsum diam, sagittis sed lectus sit amet, maximus viverra enim. Aliquam sed ultrices eros, non pellentesque leo.

Mauris aliquet ipsum magna, non rutrum justo tempus vel. Praesent non vulputate tortor. Aenean porttitor urna dui, et venenatis nunc aliquet pharetra. Integer consequat erat non molestie elementum. Nam at tincidunt sapien. Suspendisse tincidunt, justo at scelerisque convallis, nulla ante viverra leo, sit amet vehicula neque ligula in libero. Pellentesque ac purus quam. Phasellus non venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus id consequat ex. Vestibulum consectetur enim velit, nec ullamcorper nunc malesuada a. Donec in turpis molestie, vulputate lectus a, bibendum dolor. Proin mattis ligula non urna hendrerit, eu molestie tellus semper.")
#create statistics
TeamPlayer.find_by_id(1).statistics.create(goals: 1, assists: 2)
TeamPlayer.find_by_id(2).statistics.create(goals: 3, assists: 2)