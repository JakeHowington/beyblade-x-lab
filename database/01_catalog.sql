-- Created the enums for catalog tables
CREATE TYPE catalog.colors AS ENUM (
    'blue', 'red', 'green');

CREATE TYPE catalog.bey_type AS ENUM (
    'attack', 'defense', 'stamina', 'balance');

CREATE TYPE catalog.line AS ENUM (
    'ux', 'bx', 'ux_infinity','bx_infinity');

CREATE TYPE catalog.manufacturers AS ENUM (
    'hasbro', 'takara_tomy');

CREATE TYPE catalog.editions AS ENUM (
    'standard_release', 'alternate_colorway', 'special_release', 'collab_release');

CREATE TYPE catalog.bit_height AS ENUM(
    'standard','low','high','under','variable');


-- Individual parts tables 
CREATE TABLE catalog.blades(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    bey_type catalog.bey_type NOT NULL,
    ratchet_integration BOOLEAN NOT NULL,
    line catalog.line NOT NULL,
    retool_of BIGINT REFERENCES catalog.blades(id)
        ON DELETE SET NULL
        CHECK (retool_of <> id) 
);

CREATE TABLE catalog.ratchets(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sides INTEGER NOT NULL
        CHECK(sides BETWEEN 0 AND 9),
    height INTEGER NOT NULL 
        CHECK(height BETWEEN 45 AND 85 AND height % 5 = 0),
    has_metal_ring BOOLEAN NOT NULL,
    is_simple BOOLEAN NOT NULL
);

CREATE TABLE catalog.bits(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    bey_type catalog.bey_type NOT NULL,
    ratchet_integration BOOLEAN NOT NULL,
    height catalog.bit_height NOT NULL
);

CREATE TABLE catalog.assist_blades(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    bey_type catalog.bey_type NOT NULL
);

CREATE TABLE catalog.main_blades(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    bey_type catalog.bey_type NOT NULL
);

CREATE TABLE catalog.over_blades(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    bey_type catalog.bey_type NOT NULL
);

CREATE TABLE catalog.metal_blades(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    bey_type catalog.bey_type NOT NULL
);

CREATE TABLE catalog.lock_chips(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);


-- Combo tables
CREATE TABLE catalog.bx_ux_combos(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    blade_id BIGINT NOT NULL
        REFERENCES catalog.blades(id),
    ratchet_id BIGINT
        REFERENCES catalog.ratchets(id),
    bit_id BIGINT NOT NULL
        REFERENCES catalog.bits(id),
    is_stock BOOLEAN NOT NULL
    -- Current compatibility checks for cx,bx,ux combos will be done via application backend
); 

CREATE TABLE catalog.cx_combos(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    lock_chip_id BIGINT NOT NULL
        REFERENCES catalog.lock_chips(id),
    main_blade_id BIGINT
        REFERENCES catalog.main_blades(id),
    over_blade_id BIGINT
        REFERENCES catalog.over_blades(id),
    metal_blade_id BIGINT 
        REFERENCES catalog.metal_blades(id),
    assist_blade_id BIGINT NOT NULL
        REFERENCES catalog.assist_blades(id),
    ratchet_id BIGINT
        REFERENCES catalog.ratchets(id),
    bit_id BIGINT NOT NULL
        REFERENCES catalog.bits(id),
    is_stock BOOLEAN NOT NULL,

    CONSTRAINT valid_blade_combo CHECK(
        (main_blade_id IS NOT NULL AND over_blade_id IS NULL AND metal_blade_id IS NULL) OR
        (main_blade_id IS NULL AND over_blade_id IS NOT NULL AND metal_blade_id IS NOT NULL)
    )
);

CREATE TABLE catalog.variants(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    main_color catalog.colors NOT NULL,
    secondary_color catalog.colors,
    metal_coat BOOLEAN NOT NULL,
    edition catalog.editions NOT NULL,
    manufacturer catalog.manufacturers NOT NULL,
    blade_id BIGINT 
        REFERENCES catalog.blades(id),
    lock_chip_id BIGINT 
        REFERENCES catalog.lock_chips(id),
    main_blade_id BIGINT
        REFERENCES catalog.main_blades(id),
    over_blade_id BIGINT
        REFERENCES catalog.over_blades(id),
    metal_blade_id BIGINT 
        REFERENCES catalog.metal_blades(id),
    assist_blade_id BIGINT 
        REFERENCES catalog.assist_blades(id),
    ratchet_id BIGINT
        REFERENCES catalog.ratchets(id),
    bit_id BIGINT 
        REFERENCES catalog.bits(id),

    CONSTRAINT valid_variant CHECK(
        num_nonnulls(
            blade_id,
            ratchet_id,
            bit_id,
            main_blade_id,
            over_blade_id,
            metal_blade_id,
            assist_blade_id,
            lock_chip_id
        ) = 1
    )   
);


-- Creating Indexes to prevent duplicate variants 
CREATE UNIQUE INDEX ON catalog.variants(blade_id, edition, main_color, secondary_color, metal_coat, manufacturer) NULLS NOT DISTINCT WHERE blade_id IS NOT NULL;
CREATE UNIQUE INDEX ON catalog.variants(ratchet_id, edition, main_color, secondary_color, metal_coat, manufacturer) NULLS NOT DISTINCT WHERE ratchet_id IS NOT NULL;
CREATE UNIQUE INDEX ON catalog.variants(bit_id, edition, main_color, secondary_color, metal_coat, manufacturer) NULLS NOT DISTINCT WHERE bit_id IS NOT NULL;
CREATE UNIQUE INDEX ON catalog.variants(main_blade_id, edition, main_color, secondary_color, metal_coat, manufacturer) NULLS NOT DISTINCT WHERE main_blade_id IS NOT NULL;
CREATE UNIQUE INDEX ON catalog.variants(over_blade_id, edition, main_color, secondary_color, metal_coat, manufacturer) NULLS NOT DISTINCT WHERE over_blade_id IS NOT NULL;
CREATE UNIQUE INDEX ON catalog.variants(metal_blade_id, edition, main_color, secondary_color, metal_coat, manufacturer) NULLS NOT DISTINCT WHERE metal_blade_id IS NOT NULL;
CREATE UNIQUE INDEX ON catalog.variants(assist_blade_id, edition, main_color, secondary_color, metal_coat, manufacturer) NULLS NOT DISTINCT WHERE assist_blade_id IS NOT NULL;
CREATE UNIQUE INDEX ON catalog.variants(lock_chip_id, edition, main_color, secondary_color, metal_coat, manufacturer) NULLS NOT DISTINCT WHERE lock_chip_id IS NOT NULL;


-- Creating Indexes to prevent duplicate rachets
CREATE UNIQUE INDEX ON catalog.ratchets(sides,height,is_simple,has_metal_ring) NULLS NOT DISTINCT WHERE id IS NOT NULL;
