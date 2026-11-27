---------------------------------------------------------------------------------------------------------------
-- THIS FILE DOES A DESTRUCTIVE FULL RESET DELETING EVERYTHING IN DATABASE THEN REPOPULATING WITH SEED DATA
-- Run this command to execute file
-- psql -U postgres -d BeybladeX_BattleLab -f ./database/FULL_DESTRUCTIVE_RESET.sql
---------------------------------------------------------------------------------------------------------------

DROP SCHEMA IF EXISTS catalog CASCADE;
DROP SCHEMA IF EXISTS accounts CASCADE;
DROP SCHEMA IF EXISTS collection CASCADE;
DROP SCHEMA IF EXISTS battle CASCADE;

-- Recreats the schemas then repopulates the catalog with all Beyblades and Parts
\ir ./00_schemas.sql
\ir ./01_catalog.sql
\ir ./02_seed.sql
