-- Query: response_time_summary
-- Average price, average occupancy and number of listings per host response time.
-- Used to check whether the response-time effect is just a price effect:
-- average price does not follow the same pattern as occupancy, so it is not.

SELECT
  host_response_time,
  ROUND(AVG(avg_price), 2) AS avg_price_by_response_time,
  ROUND(AVG(occupancy_rate), 3) AS avg_occupancy,
  COUNT(*) AS n_listings
FROM `airbnbminipro.mart.host_performance`
GROUP BY host_response_time
ORDER BY avg_occupancy DESC
