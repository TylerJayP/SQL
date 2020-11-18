-- -----------------------------------------------------------------Tyler Perkins-----------------------------------------------------------------------------
-- #1 SELECT * FROM customers c INNER JOIN orders o ON o.customer_id = c.customer_id WHERE c.state IN ('PA', 'OH') ORDER BY c.state, c.last_name, c.first_name
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------
-- #2 SELECT lkp_status_id, status, (SELECT COUNT(order_status) FROM orders WHERE lkp_status_id = orders.order_status) AS order_count FROM lookup_order_status ORDER BY status
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------
-- #3 SELECT order_id, customer_id, order_date, order_status FROM orders WHERE order_date = '2020-05-01' -----------------------------------------------------
-- #3 UNION --------------------------------------------------------------------------------------------------------------------------------------------------
-- #3 SELECT order_id, customer_id, order_date, order_status FROM orders WHERE order_date = '2020-06-01' ORDER BY customer_id --------------------------------
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------DONE--------------------------------------------------------------------------------