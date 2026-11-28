-- Used to manually verify the intial seed data population
SELECT * FROM catalog.blades;

SELECT 
    a.id AS retool_id,
    b.id AS original_id,
    a.name AS retool_name,
    b.name AS original_name,
    a.bey_type AS retool_bey_type,
    b.bey_type AS oringinal_bey_type
FROM catalog.blades AS a
JOIN catalog.blades AS b
    ON a.retool_of = b.id;

SELECT * FROM catalog.ratchets;

SELECT * FROM catalog.ratchets
WHERE is_simple IS TRUE;

SELECT * FROM catalog.bits;

SELECT * FROM catalog.bits
WHERE height = 'standard';

SELECT * FROM catalog.bits
WHERE height = 'variable';

SELECT * FROM catalog.bits
WHERE height = 'under';

SELECT 
    b.name AS blade_name,
    b.id AS blade_id,
    b.ratchet_integration AS ratchet_integration,
    r.sides AS sides,
    r.height AS height,
    r.is_simple AS is_simple,
    bt.name AS bit_name,
    bt.height AS bit_height
FROM catalog.bx_ux_combos c
JOIN catalog.blades AS b
    ON b.id = c.blade_id
LEFT JOIN catalog.ratchets AS r
    ON r.id = c.ratchet_id    
JOIN catalog.bits AS bt
    ON bt.id = c.bit_id;


SELECT 
    lc.name AS lock_chip_name,
    mnb.name AS main_blade_name,
    ob.name AS over_blade_name,
    mtb.name AS metal_blade_name,
    ab.name AS assist_blade_name,
    r.sides AS sides,
    r.height AS height,
    r.is_simple AS is_simple,
    bt.name AS bit_name,
    bt.height AS bit_height
FROM catalog.cx_combos c
JOIN catalog.lock_chips AS lc 
    ON lc.id = c.lock_chip_id
LEFT JOIN catalog.main_blades AS mnb
    ON mnb.id = c.main_blade_id
LEFT JOIN catalog.over_blades AS ob
    ON ob.id = c.over_blade_id
LEFT JOIN catalog.metal_blades AS mtb
    ON mtb.id = c.metal_blade_id
LEFT JOIN catalog.assist_blades AS ab
    ON ab.id = c.assist_blade_id
LEFT JOIN catalog.ratchets AS r
    ON r.id = c.ratchet_id    
JOIN catalog.bits AS bt
    ON bt.id = c.bit_id;