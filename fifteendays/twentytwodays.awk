BEGIN {
	goal = 2700
	dayrate = 25
	daysallowed = 22
  print_header()
}

function print_header() {
	printf "%-7s %-15s %-15s %-20s %-30s %-15s %-30s\n", "Day","End Score", "Score Change", "Deficit/Surplus", "Days Remaining at 25/day","Day Buffer", "Current Daily Requirement";
	printf "%-7s %-15s %-15s %-20s %-30s %-15s %-30s\n", rep(length("Day"),"-"), rep(length("End Score"), "-"), rep(length("Score Change"), "-"), rep(length("Deficit/Surplus"), "-"), rep(length("Days Remaining at 25/day"), "-"), rep(length("Day Buffer"), "-"), rep(length("Current Daily Requirement"), "-");
}

function rep(l,c){
  t = "" #necessary because vars are apparently all global in awk!
  while (l-- > 0){
    t = t c
  }
  return t
}

function days_remaining_string(remdays, daysremaining){
	retstr = sprintf("%2.2f (of %2d)", remdays, daysremaining)
  return retstr
}

function daybuffer_string(remdays, daysremaining) {
	daydifference =  daysremaining - remdays
	if (daydifference > 0)
		return sprintf("%2.2f", daydifference)
	else
		return sprintf("(%2.2f)", -daydifference)
}

{
	remdays = (goal - $4)/dayrate
	daysremaining = daysallowed - $1
	day = $1
	end_score = $4
	start_score = $3
	score_change = end_score - start_score
	score_deficit = (daysremaining*dayrate) - (goal - $4)
	current_daily_requirement = (goal-$4)/(daysallowed-$1)
	days_remaining = days_remaining_string(remdays, daysremaining)
	day_buffer = daybuffer_string(remdays, daysremaining)
	printf "%-7d %-15s %-15.2f %-20s %-30s %-15s %-30.2f\n", day, end_score, score_change, score_deficit, days_remaining, day_buffer, current_daily_requirement;
}
