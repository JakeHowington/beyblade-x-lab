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
