-- View: intermediate.stg_calender
-- Staging view for the raw calendar table (one row per listing per day).
-- Grain: listing_id + date is unique (checked: no duplicates, no NULLs).
-- Period covered: 2022-09-09 to 2023-01-31, 72,101 rows, 500 listings.

SELECT
  listing_id,
  date,
  available,
  price
FROM `airbnbminipro.raw_data.calendar`
