## Chicago Ruby Hack Night December 2019: Traveling Santa

To Run:
Clone from https://github.com/adbasner/TravelingSantaRubyHackNight.git

In terminal, run 'ruby traveling_santa.rb'

This program is the simplest possible way to solve the problem. It finds the city with the shortest distance from the starting point, initially the north pole, then travles to that location. It then finds the shortest distance to any remaining location, then travels there. This repeats until all locations have been travelled to, then Santa returns home to the north pole.

It is not optimized. Analyzing all possible routes would likely produce a lower overall distance, but require exponentially more computations.

## Description

It's been been a rough year and only a handful of American cities have
any children making the "nice" list.

We have a [list of cities and their coordinates](nice-kid-cities.csv)
and want to figure out a route that gets things over for Santa quickly and
efficiently, starting and ending at his house at the north pole.

These libraries might be helpful:
* https://ruby-doc.org/stdlib-2.6.5/libdoc/csv/rdoc/CSV.html
* https://github.com/kristianmandrup/haversine

