---------------------------------------------------------------------------------------------------------------
-- THIS FILE DROPS ALL DATA FROM THE CATALOG TABLES
-- Data will need to repopulated by 02_seed.sql
-- This file is development on the catalog table
---------------------------------------------------------------------------------------------------------------

DELETE FROM catalog.bx_ux_combos;
DELETE FROM catalog.cx_combos;
DELETE FROM catalog.variants;
DELETE FROM catalog.bits;
DELETE FROM catalog.ratchets;
DELETE FROM catalog.blades;
DELETE FROM catalog.lock_chips;
DELETE FROM catalog.main_blades;
DELETE FROM catalog.assist_blades;
DELETE FROM catalog.over_blades;
DELETE FROM catalog.metal_blades;
