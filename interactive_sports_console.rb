require_relative 'bin/all_leagues.rb'
require_relative 'bin/all_teams_in_league.rb'

puts "Enter Your Choice\n 1. All Leagues \n 2. All teams in league\n 3. Team "
choice = gets.chomp.to_s

case choice

when "1"
	puts "Printing All leagues"
	obj1 = AllLeagues.new
	puts obj1.all_leagues

when "2"
	obj1 = AllTeamsInLeague.new
	puts obj1.list_all_leagues_to_compare

when "3"
    obj1 = Team.new
    puts obj1.getTeamDetails	

else
	puts "invalid Choice"
end
