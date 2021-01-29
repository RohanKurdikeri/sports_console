require 'rest-client'
require 'json'
require_relative 'all_leagues.rb'

class Team
	def getTeamDetails
		puts "Enter Team Name"
		@team_name = gets.chomp.to_s
		returnArray = []
		base_uri = 'https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=' + @team_name.to_s
		response = RestClient.get(base_uri)
		json_response = JSON.parse(response)
		hashIds = json_response['teams'] 
		hashIds.length.times do |i|
			returnArray[i] = "Team ID: #{hashIds[i]['idTeam']}, Name:  #{hashIds[i]['strTeam']}, Short Name: #{hashIds[i]['strTeamShort']}, Formed Year: #{hashIds[i]['intFormedYear']}, Sport: #{hashIds[i]['strSport']}, League: #{hashIds[i]['strLeague']}, League ID: #{hashIds[i]['idLeague']} "
		end
		return returnArray
	end
end

