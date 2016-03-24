def get_day(day)
  if day>0 && day<=31
    day
  else
    puts "The max number of days in a month is 31, \nplease give me a correct number."
    get_day(gets.chomp.to_i)
  end
end

def get_month(month)
  if month>0 && month<=12
    month
  else
    puts "That's not a month, we only have 12 every year. \nPlease, give me a correct one."
    get_month(gets.chomp.to_i)
  end
end

def get_year(year)
  if year <= Time.new.year
    year
  else
    puts " No way!! You are from the future!? \nC'mon, tell me your REAL year of birth."
    get_year(gets.chomp.to_i)
  end
end

def seconds_old
  puts "I'm gonna tell you how many seconds old you are \nbased on your birth date B|. Ready?"
  puts "The day you were born (the number please, not the name): "
  day = get_day(gets.chomp.to_i)
  puts ""
  puts "Month (number, please): "
  month = get_month(gets.chomp.to_i)
  puts ""
  puts "Year: "
  year = get_year(gets.chomp.to_i)
  puts ""
  birthdate = Time.local(year, month, day)
  age_in_seconds = (Time.new - birthdate).to_i
  puts "You're #{age_in_seconds} seconds old my friend :)"
end

seconds_old