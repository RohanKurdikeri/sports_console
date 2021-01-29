require 'rest-client'
require 'json'
require_relative 'all_leagues.rb'

class AllTeamsInLeague
	
	#Method to check if league exists
	def list_all_leagues_to_compare
		puts "Enter league name"
		@league_name = gets.chomp.to_s
		obj = AllLeagues.new
		all_leagues_data = obj.apiCall
        all_leagues_data.length.times do |leagueFinder|
        	if all_leagues_data[leagueFinder]['strLeague'] == @league_name
        		all_teams_in_league
        		break
        	end
        end 
    end

    #Method to list all the teams in a league
    def  all_teams_in_league
    	returnArray = []
		base_uri = 'https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=' + @league_name.to_s
		response = RestClient.get(base_uri)
		json_response = JSON.parse(response)
		hashIds = json_response['teams'] 
		hashIds.length.times do |i|
			returnArray[i] = "Team ID: #{hashIds[i]['idTeam']}, Name:  #{hashIds[i]['strTeam']}, Short Name: #{hashIds[i]['strTeamShort']}, Formed Year: #{hashIds[i]['intFormedYear']}, Sport: #{hashIds[i]['strSport']}, Alternate Name: #{hashIds[i]['strAlternateName']}"
		end
		return returnArray
	end
	
end