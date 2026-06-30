create database replenishment

USE replenishment

CREATE TABLE replenishment_data (
    facility_id              VARCHAR(20),
    category_name            VARCHAR(100),
    manufacturername         VARCHAR(150),
    facility_name            VARCHAR(100),
    jpin                     VARCHAR(20),
    title                    VARCHAR(255),
    pvname                   VARCHAR(100),
    vendor_lead_time         INT,
    inv_norm                 INT,
    safety_stock             INT,
    vendor_id                VARCHAR(20),
    vendor_name               VARCHAR(150),
    current_vendor_mov       DOUBLE,
    minimum_order_criteria   VARCHAR(20),
    max_allocated_space      INT,
    case_size                INT,
    cases_allocated          DOUBLE,
    space_value               DOUBLE,
    current_inventory        INT,
    inventory_breakup        TEXT,
    max_drr                  INT,
    deadweight                DOUBLE,
    earliest_promise_date    VARCHAR(20),
    open_po_details          TEXT,
    orderedquantity          INT,
    open_po_value             DOUBLE,
    open_po_cases             DOUBLE,
    final_suggestion         INT,
    final_days_of_inventory  DOUBLE,
    final_cases_suggestion   INT,
    final_value                DOUBLE,
    final_tonnage              DOUBLE,
    mov_check                VARCHAR(50),
    mrp                        DOUBLE,
    cp                          DOUBLE,
    sales_band                VARCHAR(20)
);


SELECT COUNT(*) FROM replenishment_data;  

SELECT
    vendor_id,
    vendor_name,
    COUNT(DISTINCT jpin)                              AS sku_count,
    SUM(final_suggestion)                             AS total_suggested_units,
    SUM(final_cases_suggestion)                       AS total_suggested_cases,
    ROUND(SUM(final_value), 2)                        AS total_suggested_value,
    ROUND(SUM(final_tonnage), 2)                      AS total_suggested_tonnage,
    SUM(CASE WHEN final_suggestion > 0 THEN 1 ELSE 0 END)               AS skus_needing_order,
    SUM(CASE WHEN mov_check LIKE 'Not Met%' THEN 1 ELSE 0 END)          AS skus_mov_blocked,
    ROUND(AVG(final_days_of_inventory), 1)            AS avg_projected_days_of_inventory,
    MAX(current_vendor_mov)                            AS vendor_mov_threshold
FROM replenishment_data
GROUP BY vendor_id, vendor_name
ORDER BY total_suggested_value DESC;





SELECT
    facility_id,
    facility_name,
    vendor_name,
    jpin,
    title,
    current_inventory,
    orderedquantity        AS pipeline_units,
    max_drr,
    final_days_of_inventory AS current_days_of_inventory,
    final_suggestion,
    mov_check
FROM replenishment_data
WHERE max_drr > 0
ORDER BY final_days_of_inventory ASC
LIMIT 10;








