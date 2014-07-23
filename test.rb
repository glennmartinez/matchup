

teams = [1,2,3,4,5,6,7,8]
teams.product(teams).select{|t| t[0] != t[1]}.uniq {|t| t[0].ord * t[1].ord}

def generatePairs(teams)

	# puts teams

	pairs = Array.new 

	teams.each do |t|

		currentTeam = t
		i = 0
		pairs[i] = [t, ]

		i + 1
	end

	puts pairs
	
end

def teamsnotcurrent(currentTeam, teams)

	# opponents = Array.new

	teams.each do |t|

		if t === currentTeam
			# puts currentTeam

		else
			puts t 
		end
	end
	
end

def generateRounds(teams)
	puts "Number of teams" + " " + teams.to_s
	rounds = Math.log2(teams).round(0)
	puts "Number of rounds" + " " + rounds.to_s
	 # "Matches per Rounds" + " " + matches.to_s
	
end

def areTeamsEven(teams)
	teams.is_a? Fixnum
	
end

def matchesPerRound(teams, rounds)
	round1 = teams / 2
	matchRound = Array.new
	roundArray = (1..rounds).to_a
	roundArray.each do |round|
		# puts round
		# puts matches = teams / 2
		# matchRound << 2
		if round == roundArray[0]
			matchRound << round1
		else
			round = matchRound.last / 2

			matchRound << round
		end
	end
	 puts matchRound
end

# generatePairs(teams)

# teamsnotcurrent(1, teams)

rounds = generateRounds(16)

 matchesPerRound(16, 4)