SELECT
  ROUND(pickup_latitude, 4) as lat,
  ROUND(pickup_longitude, 4) as long,
  COUNT(*) as num_pickups
FROM  `bigquery-public-data.new_york_taxi_trips.tlc_green_trips_2016`
WHERE
  (pickup_latitude BETWEEN 40.61 AND 40.91) AND
  (pickup_longitude BETWEEN -74.06 AND -73.77 ) AND
  rand() <= .2
GROUP BY lat, long
