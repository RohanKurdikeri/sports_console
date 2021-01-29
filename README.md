# Statement 

Deliverable: at a minimum we need a ruby (or python) file that, when executed, starts an interactive console that allows the user to query for sports data. File name: "interactive_sports_console.rb" (.py) or "interactive_sports_console" (this approach requires "#!/usr/bin/env ruby" at the top of the file). Feel free to structure your project as you see fit (an example basic structure is described below) - a modular and object oriented approach is encouraged. If there are any outside libraries that would be helpful you can certainly include a Gemfile (or requirements.txt for python).

Basic Project Structure:
- bin
-- interactive_sports_console
- lib/
- Gemfile (or requirements.txt for python)
- Gemfile.lock

API to interact with: https://www.thesportsdb.com/api.php?ref=apilist.fun

Acceptance Criteria:
after executing "interactive_sports_console", I should be able to perform some functions:
  * all_leagues
     - prints a list of all leagues, each with the following fields: Name, ID, Sport, Alternate Name

  * all_teams_in_league(id | name)
     - accepts a single parameter, league id OR league name
     - prints a list of all teams in the provided league, each with the following fields: ID, Name, Short Name, Formed Year, Sport, League, League ID

  * team(id | name)
     - accepts a single parameter, team id OR team name
     - prints info about the team: ID, Name, Short Name, Formed Year, Sport, League, League ID

