-- Check if acme_ward_wise_time_to_market_center table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = 'acme_ward_wise_time_to_market_center'
    ) THEN
        CREATE TABLE acme_ward_wise_time_to_market_center (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            time_to_market_center VARCHAR(100) NOT NULL,
            households INTEGER NOT NULL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert seed data if table is empty
-- DO $$
-- BEGIN
--     IF NOT EXISTS (SELECT 1 FROM acme_ward_wise_time_to_market_center) THEN
--         INSERT INTO acme_ward_wise_time_to_market_center (
--             id, ward_number, time_to_market_center, households
--         )
--         VALUES
--         -- Ward 1
--         (gen_random_uuid(), 1, 'UNDER_15_MIN', 420),
--         (gen_random_uuid(), 1, 'UNDER_30_MIN', 135),
--         (gen_random_uuid(), 1, 'UNDER_1_HOUR', 45),
--         (gen_random_uuid(), 1, '1_HOUR_OR_MORE', 10),
--         -- Ward 2
--         (gen_random_uuid(), 2, 'UNDER_15_MIN', 385),
--         (gen_random_uuid(), 2, 'UNDER_30_MIN', 160),
--         (gen_random_uuid(), 2, 'UNDER_1_HOUR', 55),
--         (gen_random_uuid(), 2, '1_HOUR_OR_MORE', 12),
--         -- Ward 3
--         (gen_random_uuid(), 3, 'UNDER_15_MIN', 310),
--         (gen_random_uuid(), 3, 'UNDER_30_MIN', 195),
--         (gen_random_uuid(), 3, 'UNDER_1_HOUR', 80),
--         (gen_random_uuid(), 3, '1_HOUR_OR_MORE', 26),
--         -- Ward 4
--         (gen_random_uuid(), 4, 'UNDER_15_MIN', 405),
--         (gen_random_uuid(), 4, 'UNDER_30_MIN', 150),
--         (gen_random_uuid(), 4, 'UNDER_1_HOUR', 50),
--         (gen_random_uuid(), 4, '1_HOUR_OR_MORE', 13),
--         -- Ward 5
--         (gen_random_uuid(), 5, 'UNDER_15_MIN', 340),
--         (gen_random_uuid(), 5, 'UNDER_30_MIN', 185),
--         (gen_random_uuid(), 5, 'UNDER_1_HOUR', 65),
--         (gen_random_uuid(), 5, '1_HOUR_OR_MORE', 20);
--     END IF;
-- END
-- $$;