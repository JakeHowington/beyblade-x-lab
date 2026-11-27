BEGIN;   
    -- Seed data for Bx blades
    INSERT INTO catalog.blades(
        name,
        bey_type,
        ratchet_integration,
        line
    ) 
    VALUES
        ('Bite Croc', 'attack', FALSE, 'bx'),
        ('Calibur Samurai', 'balance', FALSE, 'bx'),
        ('Cobalt Dragoon', 'attack', FALSE, 'bx'),
        ('Cobalt Drake', 'attack', FALSE, 'bx'),
        ('Croc Crunch', 'attack', FALSE, 'bx'),
        ('Draciel Shield', 'defense', FALSE, 'bx'),
        ('Dragoon Storm', 'attack', FALSE, 'bx'),
        ('Dran Dagger', 'attack', FALSE, 'bx'),
        ('Dran Sword', 'attack', FALSE, 'bx'),
        ('Dranzer Spiral', 'balance', FALSE, 'bx'),
        ('Driger Slash', 'balance', FALSE, 'bx'),
        ('Knight Shield', 'defense', FALSE, 'bx'),
        ('Knife Shinobi', 'defense', FALSE, 'bx'),
        ('Lance Knight', 'defense', FALSE, 'bx'),
        ('Obsidian Shell', 'defense', FALSE, 'bx'),
        ('Pearl Tiger', 'balance', FALSE, 'bx'),
        ('Phoenix Wing', 'attack', FALSE, 'bx'),
        ('Rhino Horn', 'defense', FALSE, 'bx'),
        ('Rock Leone', 'defense', FALSE, 'bx'),
        ('Scarlet Garuda', 'balance', FALSE, 'bx'),
        ('Shark Edge', 'attack', FALSE, 'bx'),
        ('Sphinx Cowl', 'defense', FALSE, 'bx'),
        ('Steel Samurai', 'balance', FALSE, 'bx'),
        ('Sting Unicorn', 'balance', FALSE, 'bx'),
        ('Storm Pegasis', 'attack', FALSE, 'bx'),
        ('Tail Viper', 'stamina', FALSE, 'bx'),
        ('Talon Ptera', 'stamina', FALSE, 'bx'),
        ('Tyranno Beat', 'attack', FALSE, 'bx'),
        ('Victory Valkyrie', 'attack', FALSE, 'bx'),
        ('Whale Wave', 'balance', FALSE, 'bx'),
        ('Wizard Arrow', 'stamina', FALSE, 'bx'),
        ('Wyvern Gale', 'stamina', FALSE, 'bx'),
        ('Yell Kong', 'stamina', FALSE, 'bx'),
        ('Tricera Press', 'defense', FALSE, 'bx');



    -- Seed data for Ux blades 
    INSERT INTO catalog.blades(
        name,
        bey_type,
        ratchet_integration,
        line
    ) 
    VALUES
        ('Circle Ghost', 'stamina', FALSE, 'ux'),
        ('Coil Orochi', 'attack', FALSE, 'ux'),
        ('Curse Mummy', 'defense', FALSE, 'ux'),
        ('Dran Buster', 'attack', FALSE, 'ux'),
        ('Golem Rock', 'defense', FALSE, 'ux'),
        ('Hells Hammer', 'balance', FALSE, 'ux'),
        ('Hover Wyvern', 'defense', FALSE, 'ux'),
        ('Impact Drake', 'attack', FALSE, 'ux'),
        ('Mail Knight', 'defense', FALSE, 'ux'),
        ('Meteor Dragoon', 'attack', FALSE, 'ux'),
        ('Phoenix Rudder', 'stamina', FALSE, 'ux'),
        ('Samurai Saber', 'attack', FALSE, 'ux'),
        ('Scorpio Spear', 'balance', FALSE, 'ux'),
        ('Shadow Shinobi', 'defense', FALSE, 'ux'),
        ('Silver Wolf', 'stamina', FALSE, 'ux'),
        ('Wizard Rod', 'stamina', FALSE, 'ux'),
        ('Clock Mirage', 'stamina', FALSE, 'ux');



    -- Seed data for Bx Infinity blades
    INSERT INTO catalog.blades(
        name,
        bey_type,
        ratchet_integration,
        line
    ) 
    VALUES
        ('Dran Strike', 'attack', FALSE, 'bx_infinity'),
        ('Heavens Ring', 'defense', FALSE, 'bx_infinity'),
        ('Luster Dragoon', 'attack', FALSE, 'bx_infinity'),
        ('Sieg Superion', 'balance', FALSE, 'bx_infinity');



    -- Seed data for Ux Ininity blades
    INSERT INTO catalog.blades(
        name,
        bey_type,
        ratchet_integration,
        line
    )
    VALUES
        ('Glory Valkyrie', 'attack', TRUE, 'ux_infinity'),
        ('Nether Incendio', 'balance', TRUE, 'ux_infinity'),
        ('Rocket Griffon', 'balance', TRUE, 'ux_infinity'),
        ('Seize Jaguar', 'defense', TRUE, 'ux_infinity'),
        ('Valor Bison', 'stamina', TRUE, 'ux_infinity');



    --Populate retool fields
    UPDATE catalog.blades AS blades
    SET retool_of = original.id
    FROM (
    VALUES
        ('Bite Croc', 'Shark Edge'),
        ('Knife Shinobi', 'Rhino Horn'),
        ('Talon Ptera', 'Tail Viper'),
        ('Yell Kong', 'Wyvern Gale'),
        ('Steel Samurai', 'Leon Claw')
    ) AS mapping(retool_name, original_name)
    JOIN catalog.blades AS original
        ON original.name = mapping.original_name
    WHERE blades.name = mapping.retool_name;



    -- Seed data for ratchets 
    INSERT INTO catalog.ratchets(
        sides,
        height,
        has_metal_ring,
        is_simple
    )
    VALUES
        (0, 70, FALSE, FALSE),
        (0, 80, FALSE, FALSE),
        (1, 50, FALSE, FALSE),
        (1, 60, FALSE, FALSE),
        (1, 80, FALSE, FALSE),
        (2, 60, FALSE, FALSE),
        (2, 70, FALSE, FALSE),
        (3, 60, FALSE, FALSE),
        (3, 70, FALSE, FALSE),
        (3, 80, FALSE, FALSE),
        (3, 85, FALSE, TRUE),
        (4, 50, FALSE, FALSE),
        (4, 55, FALSE, TRUE),
        (4, 60, FALSE, FALSE),
        (4, 70, FALSE, FALSE),
        (4, 80, FALSE, FALSE),
        (5, 50, FALSE, FALSE),
        (5, 60, FALSE, FALSE),
        (5, 70, FALSE, FALSE),
        (5, 80, FALSE, FALSE),
        (5, 85, TRUE, TRUE),
        (6, 60, FALSE, FALSE),
        (6, 70, FALSE, FALSE),
        (6, 80, FALSE, FALSE),
        (7, 55, FALSE, TRUE),
        (7, 60, FALSE, FALSE),
        (7, 70, FALSE, FALSE),
        (8, 70, FALSE, FALSE),
        (9, 60, FALSE, FALSE),
        (9, 65, FALSE, TRUE),
        (9, 70, FALSE, FALSE),
        (9, 80, FALSE, FALSE);



    -- Seed data for bits
    INSERT INTO catalog.bits(
        name,
        bey_type,
        ratchet_integration,
        height
    )
    VALUES 
        ('Accel', 'attack', FALSE, 'standard'),
        ('Ball', 'stamina', FALSE, 'standard'),
        ('Bound Spike', 'defense', FALSE, 'standard'),
        ('Cyclone', 'attack', FALSE, 'standard'),
        ('Disk Ball', 'stamina', FALSE, 'standard'),
        ('Disk Spike', 'defense', FALSE, 'standard'),
        ('Dot', 'defense', FALSE, 'standard'),
        ('Elevate', 'balance', FALSE, 'standard'),
        ('Flat', 'attack', FALSE, 'standard'),
        ('Free Ball', 'stamina', FALSE, 'standard'),
        ('Free Flat', 'attack', FALSE, 'standard'),
        ('Gear Ball', 'stamina', FALSE, 'standard'),
        ('Gear Flat', 'attack', FALSE, 'standard'),
        ('Gear Needle', 'defense', FALSE, 'standard'),
        ('Gear Point', 'balance', FALSE, 'standard'),
        ('Gear Unite', 'balance', FALSE, 'standard'),
        ('Glide', 'stamina', FALSE, 'standard'),
        ('Hexa', 'balance', FALSE, 'standard'),
        ('High Needle', 'defense', FALSE, 'high'),
        ('Ignition', 'attack', FALSE, 'standard'),
        ('Jolt', 'attack', FALSE, 'standard'),
        ('Kick', 'balance', FALSE, 'standard'),
        ('Level', 'attack', FALSE, 'standard'),
        ('Low Cyclone', 'attack', FALSE, 'low'),
        ('Low Flat', 'attack', FALSE, 'low'),
        ('Low Orb', 'stamina', FALSE, 'low'),
        ('Low Point', 'balance', FALSE, 'low'),
        ('Low Rush', 'attack', FALSE, 'low'),
        ('Merge', 'balance', FALSE, 'standard'),
        ('Metal Needle', 'defense', FALSE, 'standard'),
        ('Narrow', 'stamina', FALSE, 'standard'),
        ('Needle', 'defense', FALSE, 'standard'),
        ('Point', 'balance', FALSE, 'standard'),
        ('Quake', 'attack', FALSE, 'standard'),
        ('Rubber Accel', 'attack', FALSE, 'standard'),
        ('Rush', 'attack', FALSE, 'standard'),
        ('Spike', 'defense', FALSE, 'standard'),
        ('Taper', 'balance', FALSE, 'standard'),
        ('Trans Point', 'balance', FALSE, 'variable'),
        ('Turbo', 'attack', TRUE, 'variable'),
        ('Under Needle', 'defense', FALSE, 'under'),
        ('Unite', 'balance', FALSE, 'standard'),
        ('Vortex', 'attack', FALSE, 'standard'),
        ('Wall Ball', 'stamina', FALSE, 'standard'),
        ('Wall Wedge', 'defense', FALSE, 'standard'),
        ('Wedge', 'defense', FALSE, 'standard'),
        ('Yielding', 'stamina', FALSE, 'standard'),
        ('Zap', 'balance', FALSE, 'standard');
COMMIT;

