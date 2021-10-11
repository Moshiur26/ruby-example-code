puts Time.now
puts Time.now - 10
puts Time.now - 86400 #(86400 = 1 day)

class Fixnum
    def seconds
        self
    end
    def minutes
        self*60
    end
    def hours
        self*60*60
    end
    def days
        self*60*60*24
    end
end

print "Time.now - 30.days : ", Time.now - 30.days, "\n"
print "Time.now - 60.minutes : ", Time.now - 60.minutes, "\n"
print "Time.now - 24.hours : ", Time.now - 24.hours, "\n"

year = 2016
month = 1
day = 16
hour = 12
min = 57
sec = 10
msec = 42
local = Time.local(year, month, day, hour, min, sec, msec)
gm = Time.gm(year, month, day, hour, min, sec, msec)
utc = Time.utc(year, month, day, hour, min, sec, msec)

print "local: ", local, " gm: ", gm, " utc: ", utc, "\n"

print Time.gm(2015, 5).to_i, "\n"

epoch_time = Time.gm(2015, 5).to_i
t = Time.at(epoch_time)

print t.year, " ", t.month, " ", t.day, "\n"
puts Time.now.month
puts Time.now.mday
puts Time.now.yday


# hour A number representing the hour in 24-hour format ( 21 for 9 p.m., for example).
# min The number of minutes past the hour.
# sec The number of seconds past the minute.
# usec The number of microseconds past the second (there are 1,000,000 microseconds per second).
# day The number of the day in the month.
# mday Synonym for the day method, considered to be “month” day.
# wday The number of the day in terms of the week (Sunday is 0 , Saturday is 6 ).
# yday The number of the day in terms of the year.
# month The number of the month of the date ( 11 for November, for example).
# year The year associated with the date.
# zone Returns the name of the time zone associated with the time.
# utc? Returns true or false depending on if the time/date is in the UTC/GMT time zone or not.
# gmt? Synonym for the utc ? method for those who prefer to use the term GMT.