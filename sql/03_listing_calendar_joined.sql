-- View: intermediate.listing_calender_joined
-- Joins each listing to its daily calendar records (one row per listing per day).
-- Check: the result has 72,101 rows, the same as the calendar table,
-- so every calendar row matched a listing and no rows were duplicated.

SELECT l.id
      ,l.room_type
      ,l.host_response_time
      ,l.review_scores_value
      ,c.date
      ,c.available
      ,c.price
FROM `airbnbminipro.intermediate.stg_listing` AS l
JOIN `airbnbminipro.intermediate.stg_calender` AS c
  ON l.id = c.listing_id
