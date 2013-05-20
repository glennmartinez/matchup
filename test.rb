puts 'hello'

#params['match']['teams_attributes']['0']['id']

params = [{"utf8"=>"something",
 "_method"=>"put",
 "authenticity_token"=>"knq4dG1U/5NJxMD6KYxfOpKd3CuOBHRlp6xCwdpwCnQ=",
 "match"=>{"name"=>"latest match",
 "date(1i)"=>"2013",
 "date(2i)"=>"5",
 "date(3i)"=>"19",
 "teams_attributes"=>{"0"=>{"name"=>"Navi",
 "id"=>"1"},
 "1369038961631"=>{"name"=>"A team",
 "id"=>"2"}}},
 "commit"=>"Update Match",
 "match_id"=>"2"}]

teamparams = [{"0"=>{"name"=>"Navi", "id"=>"1"}, "1369038961631"=>{"name"=>"A team", "id"=>"2"}}]

# puts params.first["match"]["teams_attributes"]["0"]["id"]
# teams = Array.new 
#  puts teams = params.first["match"]["teams_attributes"]

#  teams.each do |tea|
 
#   	teamid = tea.first["id"]
#  	puts teamid
 
#  end

teams = params.first["match"]["teams_attributes"]
puts teams
teams.each_value.map do |params|
	puts params["id"]
end 
   # params.first["match"].each do |test|
   # 	puts test.first["teams_attributes"]

   # end

	# params['match'].each do |para|
	# 	pp para['teams_attributes']

	# end


