-- View: intermediate.stg_listing
-- Staging view for the raw listing table (one row per listing).
-- Grain: id is unique (checked: 500 rows, 500 distinct ids).
-- No NULLs in review_scores_value or host_response_time.

SELECT
  id,
  room_type,
  host_response_time,
  review_scores_value
FROM `airbnbminipro.raw_data.listing`
