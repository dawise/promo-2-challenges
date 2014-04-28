# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'


def age_in_days(day, month, year)
  birthday = date.new(year, month, day)
  date.today - birthday
end

puts age_in_days(15,09,1990)
  #TODO: return the age expressed in days given the day, month, and year of birth
