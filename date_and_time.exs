# TIME
# elixir has a few modules to work with time. thought is limited to UTC timezone
Time.utc_now()
# ~T[23:45:16.820699] - brazil - 20:45
# ~T is a sigil to create time structs

t = ~T[20:45:16.820699]
t.hour
# 20
t.second
# 16

# DATE
# Time was just about time, and Date is about date
Date.utc_today()
# ~D[2019-04-14]
#
# there are some cool functions to work with date:
{:ok, date} = Date.new(2019, 04, 14)
# {:ok, ~D[2019-04-14]}
Date.day_of_era(date)
# {737163, 1}

# NaiveDateTime
# it contains the date and time, but does not have timezone support
NaiveDateTime.utc_now()
# ~N[2019-04-14 23:54:21.809459]
NaiveDateTime.add(~N[2018-10-01 00:00:14], 30)
# ~N[2018-10-01 00:00:44]
# OBS: probaly it has timezone on latest elixir release
#
# DateTIme
# it does not have the "limitations" from the last one
# it yet does not contain timezone database
# it is just composed of functions that works in utc
DateTime.from_naive(~N[2016-05-24 13:26:08.003], "Etc/UTC")
# {:ok, #DateTime<2016-05-24 13:26:08.003Z>}
#
# Two other good ones are: Timex and Calendar
