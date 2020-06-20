(SELECT
  -- Targets
  g14.tip_amount AS tip,
  g14.tip_amount / g14.fare_amount AS tip_percent,
  g14.fare_amount AS fare,
  -- Latutde and Long data - use for demography join
  round(g14.pickup_longitude,4) AS pickup_long,
  round(g14.pickup_latitude, 4) AS pickup_lat,
  round(g14.dropoff_latitude,4) AS dropoff_lat,
  round(g14.dropoff_longitude, 4) AS dropoff_long,
  -- Expl. variables
  MOD(EXTRACT(HOUR FROM g14.pickup_datetime)+3, 6) AS time_of_day,
  CASE WHEN EXTRACT(DAYOFWEEK FROM g14.pickup_datetime) BETWEEN 2 AND 6 THEN 0 ELSE 1 END AS weekend,
  CAST(EXTRACT(MONTH FROM g14.pickup_datetime) AS STRING) AS month,
  CAST(EXTRACT(YEAR FROM g14.pickup_datetime) AS STRING) AS year,
  g14.passenger_count,
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_green_trips_2014` as g14
WHERE
  payment_type = 1 AND
  fare_amount > 2.0 AND fare_amount < 200.0 AND
  rate_code = 1 AND
  pickup_latitude IS NOT NULL AND
  pickup_longitude IS NOT NULL AND
  dropoff_latitude IS NOT NULL AND
  dropoff_longitude IS NOT NULL AND
  -- Sampling rate
  rand() < 0.05)

UNION ALL

(SELECT
  -- Targets
  g15.tip_amount AS tip,
  g15.tip_amount / g15.fare_amount AS tip_percent,
  g15.fare_amount AS fare,
  -- Latutde and Long data - use for demography join
  round(g15.pickup_longitude,4) AS pickup_long,
  round(g15.pickup_latitude, 4) AS pickup_lat,
  round(g15.dropoff_latitude,4) AS dropoff_lat,
  round(g15.dropoff_longitude, 4) AS dropoff_long,
  -- Expl. variables
  MOD(EXTRACT(HOUR FROM g15.pickup_datetime)+3, 6) AS time_of_day,
  CASE WHEN EXTRACT(DAYOFWEEK FROM g15.pickup_datetime) BETWEEN 2 AND 6 THEN 0 ELSE 1 END AS weekend,
  CAST(EXTRACT(MONTH FROM g15.pickup_datetime) AS STRING) AS month,
  CAST(EXTRACT(YEAR FROM g15.pickup_datetime) AS STRING) AS year,
  g15.passenger_count,
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_green_trips_2015` as g15
WHERE
  payment_type = 1 AND
  fare_amount > 2.0 AND fare_amount < 200.0 AND
  rate_code = 1 AND
  pickup_latitude IS NOT NULL AND
  pickup_longitude IS NOT NULL AND
  dropoff_latitude IS NOT NULL AND
  dropoff_longitude IS NOT NULL AND
  -- Sampling rate
  rand() < 0.05
)

UNION ALL

(SELECT
  -- Targets
  g16.tip_amount AS tip,
  g16.tip_amount / g16.fare_amount AS tip_percent,
  g16.fare_amount AS fare,
  -- Latutde and Long data - use for demography join
  round(g16.pickup_longitude,4) AS pickup_long,
  round(g16.pickup_latitude, 4) AS pickup_lat,
  round(g16.dropoff_latitude,4) AS dropoff_lat,
  round(g16.dropoff_longitude, 4) AS dropoff_long,
  -- Expl. variables
  MOD(EXTRACT(HOUR FROM g16.pickup_datetime)+3, 6) AS time_of_day,
  CASE WHEN EXTRACT(DAYOFWEEK FROM g16.pickup_datetime) BETWEEN 2 AND 6 THEN 0 ELSE 1 END AS weekend,
  CAST(EXTRACT(MONTH FROM g16.pickup_datetime) AS STRING) AS month,
  CAST(EXTRACT(YEAR FROM g16.pickup_datetime) AS STRING) AS year,
  g16.passenger_count,
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_green_trips_2016` as g16
WHERE
  payment_type = 1 AND
  fare_amount > 2.0 AND fare_amount < 200.0 AND
  rate_code = 1 AND
  pickup_latitude IS NOT NULL AND
  pickup_longitude IS NOT NULL AND
  dropoff_latitude IS NOT NULL AND
  dropoff_longitude IS NOT NULL AND
  -- Sampling rate
  rand() < 0.05
)

UNION ALL

(SELECT
  -- Targets
  g17.tip_amount AS tip,
  g17.tip_amount / g17.fare_amount AS tip_percent,
  g17.fare_amount AS fare,
  -- Latutde and Long data - use for demography join
  round(g17.pickup_longitude, 4) AS pickup_long,
  round(g17.pickup_latitude, 4) AS pickup_lat,
  round(g17.dropoff_latitude,4) AS dropoff_lat,
  round(g17.dropoff_longitude, 4) AS dropoff_long,
  -- Expl. variables
  MOD(EXTRACT(HOUR FROM g17.pickup_datetime)+3, 6) AS time_of_day,
  CASE WHEN EXTRACT(DAYOFWEEK FROM g17.pickup_datetime) BETWEEN 2 AND 6 THEN 0 ELSE 1 END AS weekend,
  CAST(EXTRACT(MONTH FROM g17.pickup_datetime) AS STRING) AS month,
  CAST(EXTRACT(YEAR FROM g17.pickup_datetime) AS STRING) AS year,
  g17.passenger_count,
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_green_trips_2016` as g17
WHERE
  payment_type = 1 AND
  fare_amount > 2.0 AND fare_amount < 200.0 AND
  rate_code = 1 AND
  pickup_latitude IS NOT NULL AND
  pickup_longitude IS NOT NULL AND
  dropoff_latitude IS NOT NULL AND
  dropoff_longitude IS NOT NULL AND
  -- Sampling rate
  rand() < 0.05
)