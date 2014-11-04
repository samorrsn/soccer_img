namespace :export do
  desc "Prints Country.all in a seeds.rb way."
  task :seeds_format => :environment do
    User.order(:id).all.each do |user|
      puts "User.create(#{user.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Team.order(:id).all.each do |team|
      puts "Team.create(#{team.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Position.order(:id).all.each do |position|
      puts "Position.create(#{position.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    TeamMember.order(:id).all.each do |team_member|
      puts "TeamMember.create(#{team_member.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    PlayerPosition.order(:id).all.each do |player_position|
      puts "PlayerPosition.create(#{player_position.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end