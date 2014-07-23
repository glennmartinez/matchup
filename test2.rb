# BRACKETS BIG TIME BRACCKETS


# Teams:
# team1
# team2
# team3
# team4
# team5
# team6
# team7
# team8


# Brackets:
# * needs to have SEATS (each position in the bracket)
# * needs to have ROUNDS (calculated by team ie: 8 teams = 3 rounds 8,4,2)
# * needs to have MATCHES

# logic
# 1) by the number of teams calculate how many rounds there will be 
# 2) place pairs of teams into the first ROUND, create a MATCH and assign each team a SEATid
# 2) upon selecting a winner, look for next round and add team to this round and grant a SEAT from the
#  number of positions
# methods-
# 1) method to grab teams into pairs (stretch work out seeding or if they came from another group)
# 2) 



# 				TOURNAMENT
# 					|
# 				BRACKETS

# 					| - Creates Bracket and associate it to a tournament
				
# 				ROUNDS 
# 				    | - By number of teams calculate how many rounds math.log2(teams)
# 				NODES

# 					| - Calculate how many nodes to create from number of teams 
# 					  _ Associate Root node to next round till the end
# 					  - Associate TEAM to each node if Even.
				
# 				MATCH
# 					| - Create Match for two nodes 
# 					  - Upon match completion move winning team to next round 
				



class Match

  # All matches have an Id, a top player/team and bottom player/team
  attr_reader :id, :top, :bottom

  def initialize(id, top, bottom)
    @id = id
    @top = top
    @bottom = bottom
  end
end

# a Draw is composed of rounds and matches
class Draw
  attr_reader :rounds
  attr_reader :matches

  # here is the generation of the match-ups
  def initialize(players)
    @matches = [] # the list of all matches
    @rounds = {} # the hash of matches for each round

    match = round = 1

    # normalize players count into square potency
    nsqrplayers = 2 ** Math.frexp(players.size - 1).last

    # derive candidates for 1st round, setting byes for top players
    candidates = (1..nsqrplayers).to_a.map { |c| c > players.size ? nil: players[c-1] }

    while (ncandidates = candidates.size) >= 2
      while !candidates.empty?
        @rounds[round] ||= []

        # setup first x last matches from the candidates list
        @rounds[round] << @matches[match] = Match.new(match,
                                                      candidates.shift,

                                                      candidates.pop)
        match += 1
      end

      # derive candidates for remaining rounds, but now
      # the candidates will appear in the form of match Ids
      # so let's map the candidates from the winners of the previousmatches
      candidates = (((@rounds[round].first.id)..(@rounds[round].last.id))).to_a.map do |m|
        # was it a bye?
        @matches[m].bottom.nil? ? "#{@matches[m].top}" : "W#{m}"
      end
      round += 1
    end
    puts @rounds
  end

  def to_s
    buf = ""
    for r in @rounds.keys.sort
      buf << "R#{r}\n"
      for m in @rounds[r]
        buf << "M#{m.id}: #{m.top} x #{m.bottom.nil? ? 'bye' : m.bottom}\n"
      end
      buf << "\n"
    end
    buf
  end
end

# players = (1..10).to_a
 players = (ARGV[0].to_i)

 array = (1..players).to_a

# array = ["navy", "ice","yolo","toolegit"]
# puts tournament

puts Draw.new(array).to_s



