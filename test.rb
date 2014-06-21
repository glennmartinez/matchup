

teams = [1,2,3,4,5,6]

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

generatePairs(teams)

teamsnotcurrent(1, teams)