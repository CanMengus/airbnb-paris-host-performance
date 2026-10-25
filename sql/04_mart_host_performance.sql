-- Table: mart.host_performance
-- One row per listing with its occupancy and average price, ready for Looker Studio.
-- A day counts as booked when the listing was not available (available = FALSE).
-- Result: 500 rows (one per listing).

SELECT
  id,
  room_type,
  host_response_time,
  review_scores_value,
  COUNT(*) AS total_days,
  COUNTIF(available = FALSE) AS booked_days,
  ROUND(COUNTIF(available = FALSE) / COUNT(*), 3) AS occupancy_rate,
  ROUND(AVG(price), 2) AS avg_price
FROM `airbnbminipro.intermediate.listing_calender_joined`
GROUP BY id, room_type, host_response_time, review_scores_value
