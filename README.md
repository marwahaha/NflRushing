### Understanding the problem
In this repo is the file [`rushing.json`](/rushing.json). It contains data about NFL players' rushing statistics. Each entry contains the following information
* `Player` (Player's name)
* `Team` (Player's team abbreviation)
* `Pos` (Player's postion)
* `Att/G` (Rushing Attempts Per Game Average)
* `Att` (Rushing Attempts)
* `Yrds` (Total Rushing Yards)
* `Avg` (Rushing Average Yards Per Attempt)
* `Yds/G` (Rushing Yards Per Game)
* `TD` (Total Rushing Touchdowns)
* `Lng` (Longest Rush -- a `T` represents a touchdown occurred)
* `1st` (Rushing First Downs)
* `1st%` (Rushing First Down Percentage)
* `20+` (Rushing 20+ Yards Each)
* `40+` (Rushing 40+ Yards Each)
* `FUM` (Rushing Fumbles)

##### Requirements
1. Create a web app. This must be able to do the following steps
    1. Create a webpage which displays a table with the contents of `rushing.json`
    2. The user should be able to sort the players by _Total Rushing Yards_, _Longest Rush_ and _Total Rushing Touchdowns_
    3. The user should be able to filter by the player's name
    4. The user should be able to download the sorted/filtered data as a CSV

2. Update the section `Installation and running this solution` in the README file explaining how to run your code

### Installation and running this solution
1.Download the project.<br>
2.Run 'bundle install' to install all missing gems.<br>
3.Run 'bundle exec rake db:migrate' to run migration<br>
4.Run 'bundle exec rake db:seed' to populate database.<br>
5.Run 'rails s' to start the server.<br>
6.Use a browser to visit http://localhost:3000<br>
