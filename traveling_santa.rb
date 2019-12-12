require 'haversine'
require 'CSV'

csv = CSV.read('nice-kid-cities.csv')
csv.shift

starting_point = [90, -135] 
starting_city = ["North Pole"]
ending_point = [90, -135] 
total_distance = 0

def findMinDistances(start_loc, end_loc_array)
  distances = []
  
  end_loc_array.each do |row|
    city_coords = [row[2].to_i, row[3].to_i]
    distances << Haversine.distance(start_loc, city_coords).to_miles
  end
  
  i = distances.index(distances.min)
  lowest_distance = distances.min
  
  return [i, lowest_distance]
end

p "-" * 35

while csv.length > 0
  p "Starting City: " + starting_city[0]
  fmd_results = findMinDistances(starting_point, csv)
  i = fmd_results[0]
  total_distance += fmd_results[1]
  print "Travelling: "
  p fmd_results[1]
  print "New total distance: "
  p total_distance  
  starting_city = [csv[i][0]]
  starting_point = [csv[i][2].to_i, csv[i][3].to_i]
  csv.delete_at(fmd_results[0])
  p "New City: " + starting_city[0]
  p "-" * 35
end

p "Starting City: " + starting_city[0]

total_distance += Haversine.distance(starting_point, ending_point).to_miles

p "Ending City: North Pole"
p "Total Miles Travelled: " + total_distance.to_s

p "-" * 35
