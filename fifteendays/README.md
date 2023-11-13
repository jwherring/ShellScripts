# Fifteendays

Fifteen days is an [awk](http://awk.dev/) demo that keeps track of my daily progress at working tactics puzzles on Chess.com.  It's called "Fifteen Days" because the goal is to get to a `2700` in the next fifteen days (i.e. by `2023-11-24`).

## Files

1. `fifteendays.tsv` contains the data - a record of each day's performance.  It is a tab-separated file with the format:
    `incremental_day date starting_score ending_score successful_attempts total_attempts`
1. `fifteendays.awk` - an awk script that takes `fifteendays.tsv` and runs some analysis on it - primarily to calculate how many points I need to gain each day going forward to hit the goal of getting to `2700` in fifteen days.
1. `increment` - a helper bash script that takes the day's ending score, number of successful attempts and number of attempts in that order and adds the next line to `fifteendays.tsv`
