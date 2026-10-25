-- Query: host_performance_bucketed
-- Adds a price bucket to each listing in the mart so occupancy can be
-- compared across price ranges. The numeric prefix ("1:", "2:", ...)
-- keeps the buckets in price order when sorted alphabetically.

SELECT
  *,
  CASE
    WHEN avg_price < 100 THEN '1: <100'
    WHEN avg_price < 200 THEN '2: 100-200'
    WHEN avg_price < 300 THEN '3: 200-300'
    WHEN avg_price < 500 THEN '4: 300-500'
    ELSE '5: 500+'
  END AS price_bucket
FROM `airbnbminipro.mart.host_performance`
