require 'rest-client'
require 'json'

class AllLeagues
	#This Method is used as the base method in multiple classes to fetch the league details
	def apiCall
		base_uri = 'https://www.thesportsdb.com/api/v1/json/1/all_leagues.php'
		response = RestClient.get(base_uri)
		json_response = JSON.parse(response)
		@hashIds = json_response['leagues'] 
	end

	#Fetching league details using apiCall method
	def all_leagues
		apiCall
		returnArray = []
		@hashIds.length.times do |i|
			returnArray[i] = "ID: #{@hashIds[i]['idLeague']}, Name:  #{@hashIds[i]['strSport']}, LEAGUE: #{@hashIds[i]['strLeague']}, ALT: #{@hashIds[i]['strLeagueAlternate']}"
		end
		return returnArray
	end
end
