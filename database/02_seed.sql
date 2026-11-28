BEGIN;   
    -- Seed data for Bx blades
    INSERT INTO catalog.blades(
        name,
        bey_type,
        ratchet_integration,
        line
    ) 
    VALUES
        ('Samurai Calibur', 'balance', FALSE, 'bx'),
        ('Cobalt Dragoon', 'attack', FALSE, 'bx'),
        ('Cobalt Drake', 'attack', FALSE, 'bx'),
        ('Croco Crunch', 'attack', FALSE, 'bx'),
        ('Draciel Shield', 'defense', FALSE, 'bx'),
        ('Dragoon Storm', 'attack', FALSE, 'bx'),
        ('Dran Dagger', 'attack', FALSE, 'bx'),
        ('Dran Sword', 'attack', FALSE, 'bx'),
        ('Dranzer Spiral', 'balance', FALSE, 'bx'),
        ('Driger Slash', 'balance', FALSE, 'bx'),
        ('Knight Shield', 'defense', FALSE, 'bx'),
        ('Shinobi Knife', 'defense', FALSE, 'bx'),
        ('Knight Lance', 'defense', FALSE, 'bx'),
        ('Black Shell', 'defense', FALSE, 'bx'),
        ('Weiss Tiger', 'balance', FALSE, 'bx'),
        ('Phoenix Wing', 'attack', FALSE, 'bx'),
        ('Rhino Horn', 'defense', FALSE, 'bx'),
        ('Rock Leone', 'defense', FALSE, 'bx'),
        ('Crimson Garuda', 'balance', FALSE, 'bx'),
        ('Shark Edge', 'attack', FALSE, 'bx'),
        ('Sphinx Cowl', 'defense', FALSE, 'bx'),
        ('Samurai Steel', 'balance', FALSE, 'bx'),
        ('Unicorn Sting', 'balance', FALSE, 'bx'),
        ('Storm Pegasis', 'attack', FALSE, 'bx'),
        ('Viper Tail', 'stamina', FALSE, 'bx'),
        ('Ptera Swing', 'stamina', FALSE, 'bx'),
        ('Tyranno Beat', 'attack', FALSE, 'bx'),
        ('Victory Valkyrie', 'attack', FALSE, 'bx'),
        ('Whale Wave', 'balance', FALSE, 'bx'),
        ('Wizard Arrow', 'stamina', FALSE, 'bx'),
        ('Wyvern Gale', 'stamina', FALSE, 'bx'),
        ('Kong Yell', 'stamina', FALSE, 'bx'),
        ('Leon Claw', 'balance', FALSE, 'bx'),
        ('Tricera Press', 'defense', FALSE, 'bx'),
        ('Bat Gust', 'balance', FALSE, 'bx'),
        ('Bear Scratch', 'defense', FALSE, 'bx'),
        ('Crab Clamp', 'stamina', FALSE, 'bx'),
        ('Cyclops Eye', 'stamina', FALSE, 'bx'),
        ('Dran Sword Version 2.0', 'attack', FALSE, 'bx'),
        ('Goat Tackle', 'defense', FALSE, 'bx'),
        ('Hells Chain', 'balance', FALSE, 'bx'),
        ('Hells Scythe', 'balance', FALSE, 'bx'),
        ('Knight Shield Version 2.0', 'defense', FALSE, 'bx'),
        ('Lightning L-Drago (Rapid-Hit Type)', 'attack', FALSE, 'bx'),
        ('Lightning L-Drago (Upper Type)', 'attack', FALSE, 'bx'),
        ('Mammoth Tusk', 'balance', FALSE, 'bx'),
        ('Medusa Stun', 'stamina', FALSE, 'bx'),
        ('Phoenix Feather', 'attack', FALSE, 'bx'),
        ('Shark Gill', 'attack', FALSE, 'bx'),
        ('Shelter Drake', 'balance', FALSE, 'bx'),
        ('Storm Spriggan', 'balance', FALSE, 'bx'),
        ('Tricera Spiky', 'defense', FALSE, 'bx'),
        ('Tyranno Roar', 'attack', FALSE, 'bx'),
        ('Viking Hack', 'attack', FALSE, 'bx'),
        ('Wizard Arrow Version 2.0', 'stamina', FALSE, 'bx'),
        ('Xeno Xcalibur', 'attack', FALSE, 'bx');



    -- Seed data for Ux blades 
    INSERT INTO catalog.blades(
        name,
        bey_type,
        ratchet_integration,
        line
    ) 
    VALUES
        ('Ghost Circle', 'stamina', FALSE, 'ux'),
        ('Orochi Cluster', 'attack', FALSE, 'ux'),
        ('Mummy Curse', 'defense', FALSE, 'ux'),
        ('Dran Buster', 'attack', FALSE, 'ux'),
        ('Golem Rock', 'defense', FALSE, 'ux'),
        ('Hells Hammer', 'balance', FALSE, 'ux'),
        ('Wyvern Hover', 'defense', FALSE, 'ux'),
        ('Impact Drake', 'attack', FALSE, 'ux'),
        ('Knight Mail', 'defense', FALSE, 'ux'),
        ('Meteor Dragoon', 'attack', FALSE, 'ux'),
        ('Phoenix Rudder', 'stamina', FALSE, 'ux'),
        ('Samurai Saber', 'attack', FALSE, 'ux'),
        ('Scorpio Spear', 'balance', FALSE, 'ux'),
        ('Shinobi Shadow', 'defense', FALSE, 'ux'),
        ('Silver Wolf', 'stamina', FALSE, 'ux'),
        ('Wizard Rod', 'stamina', FALSE, 'ux'),
        ('Clock Mirage', 'stamina', FALSE, 'ux'),
        ('Aegis Rampart', 'defense', TRUE, 'ux'),
        ('Aero Pegasus', 'attack', FALSE, 'ux'),
        ('Leon Crest', 'defense', FALSE, 'ux'),
        ('Shark Scale', 'attack', FALSE, 'ux'),
        ('Shinobi Shuriken', 'attack', TRUE, 'ux');



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
        ('Sieg Superion', 'balance', FALSE, 'bx_infinity'),
        ('Horus Shatter', 'stamina', FALSE, 'bx_infinity');



    -- Seed data for Ux Ininity blades
    INSERT INTO catalog.blades(
        name,
        bey_type,
        ratchet_integration,
        line
    )
    VALUES
        ('Glory Valkyrie', 'attack', TRUE, 'ux_infinity'),
        ('Hells Nether', 'balance', TRUE, 'ux_infinity'),
        ('Bullet Griffon', 'balance', TRUE, 'ux_infinity'),
        ('Seize Jaguar', 'defense', TRUE, 'ux_infinity'),
        ('Bison Valor', 'stamina', TRUE, 'ux_infinity');



    --Populate retool fields
    UPDATE catalog.blades AS blades
    SET retool_of = original.id
    FROM (
    VALUES
        ('Croco Crunch', 'Shark Edge'),
        ('Shinobi Knife', 'Rhino Horn'),
        ('Ptera Swing', 'Viper Tail'),
        ('Kong Yell', 'Wyvern Gale'),
        ('Samurai Steel', 'Leon Claw')
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
        (9, 80, FALSE, FALSE),
        (0, 60, FALSE, FALSE),
        (1, 70, FALSE, FALSE),
        (2, 80, FALSE, FALSE),
        (3, 65, TRUE, TRUE),  
        (7, 80, FALSE, FALSE),
        (8, 80, FALSE, FALSE);



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
        ('Bound Spike', 'defense', FALSE, 'variable'),
        ('Cyclone', 'attack', FALSE, 'standard'),
        ('Disk Ball', 'stamina', FALSE, 'high'),
        ('Disk Spike', 'defense', FALSE, 'high'),
        ('Dot', 'defense', FALSE, 'standard'),
        ('Elevate', 'balance', FALSE, 'low'),
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
        ('Ignition', 'attack', FALSE, 'under'),
        ('Jolt', 'attack', FALSE, 'standard'),
        ('Kick', 'balance', FALSE, 'standard'),
        ('Level', 'attack', FALSE, 'standard'),
        ('Low Cyclone', 'attack', FALSE, 'low'),
        ('Low Flat', 'attack', FALSE, 'low'),
        ('Low Orb', 'stamina', FALSE, 'low'),
        ('Low Point', 'balance', FALSE, 'low'),
        ('Low Rush', 'attack', FALSE, 'low'),
        ('Merge', 'balance', FALSE, 'high'),
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
        ('Wall Ball', 'stamina', FALSE, 'high'),
        ('Wall Wedge', 'defense', FALSE, 'high'),
        ('Wedge', 'defense', FALSE, 'standard'),
        ('Yielding', 'stamina', FALSE, 'high'),
        ('Operate', 'balance', TRUE, 'variable'),
        ('Zap', 'balance', FALSE, 'low'),
        ('Gear Rush', 'attack', FALSE, 'standard'),
        ('High Taper', 'balance', FALSE, 'high'),
        ('Metal Taper', 'balance', FALSE, 'standard'),
        ('Orb', 'stamina', FALSE, 'standard'),
        ('Trans Kick', 'balance', FALSE, 'variable'),
        ('Under Flat', 'attack', FALSE, 'under');

    

    -- Seed data for lock chips
    INSERT INTO catalog.lock_chips(
        name
    )
    VALUES
        ('Bahamut'),
        ('Brachio'),
        ('Bucks'),
        ('Cerberus'),
        ('Croco'),
        ('Drake'),
        ('Dran'),
        ('Emperor'),
        ('Enlil'),
        ('Eva'),
        ('Fox'),
        ('Hells'),
        ('Hornet'),
        ('Kid'),
        ('Knight'),
        ('Kraken'),
        ('Leon'),
        ('Pegasus'),
        ('Perseus'),
        ('Phoenix'),
        ('Ragna'),
        ('Rhino'),
        ('Sol'),
        ('Tiga'),
        ('Unicorn'),
        ('Valkyrie'),
        ('Whale'),
        ('Wizard'),
        ('Wolf');


    -- Seed data for main blades
    INSERT INTO catalog.main_blades(
        name,
        bey_type
    )
    VALUES 
        ('Antlers', 'stamina'),
        ('Arc', 'stamina'),
        ('Blast', 'attack'),
        ('Brave', 'attack'),
        ('Brush', 'attack'),
        ('Dark', 'defense'),
        ('Eclipse', 'balance'),
        ('Fang', 'attack'),
        ('Flame', 'stamina'),
        ('Flare', 'defense'),
        ('Fort', 'balance'),
        ('Hunt', 'stamina'),
        ('Might', 'balance'),
        ('Reaper', 'balance'),
        ('Volt', 'attack'),
        ('Wriggle', 'stamina');



    -- Seed data for over blades
    INSERT INTO catalog.over_blades(
        name,
        bey_type
    )
    VALUES 
        ('Break', 'attack'),
        ('Flow', 'stamina'),
        ('Guard', 'defense'),
        ('I', 'balance'),
        ('Outer', 'stamina'),
        ('Peak', 'balance'),
        ('Tough', 'defense'),
        ('Weight', 'balance');



    -- Seed data for metal blades
    INSERT INTO catalog.metal_blades(
        name,
        bey_type
    )
    VALUES 
        ('Blitz', 'attack'),
        ('Delta', 'balance'),
        ('Force', 'balance'),
        ('Fortress', 'defense'),
        ('Hurricane', 'balance'),
        ('Rage', 'stamina'),
        ('Tread', 'defense'),
        ('Whip', 'stamina');



    -- Seed data for assist blades 
    INSERT INTO catalog.assist_blades(
        name,
        bey_type
    )
    VALUES 
        ('Assault', 'attack'),
        ('Bumper', 'defense'),
        ('Charge', 'defense'),
        ('Dual', 'balance'),
        ('Erase', 'stamina'),
        ('Free', 'stamina'),
        ('Gravity', 'attack'),
        ('Heavy', 'balance'),
        ('Jaggy', 'attack'),
        ('Knuckle', 'attack'),
        ('Massive', 'balance'),
        ('Odd', 'balance'),
        ('Quell', 'defense'),
        ('Round', 'stamina'),
        ('Slash', 'attack'),
        ('Turn', 'balance'),
        ('Vertical', 'defense'),
        ('Wheel', 'stamina'),
        ('Zillion', 'defense');
    


    --Populate Stock BX and UX combos
    DO $$
    DECLARE
        rows_affected INT := 0;
    BEGIN
        INSERT INTO catalog.bx_ux_combos(
            blade_id,
            ratchet_id,
            bit_id
        )
        SELECT blade.id, ratchet.id, bits.id
        FROM (
            VALUES
                ('Aegis Rampart', NULL, NULL, NULL, NULL, 'Ball', 'standard'),
                ('Aegis Rampart', NULL, NULL, NULL, NULL, 'Gear Ball', 'standard'),
                ('Aero Pegasus', 3, 70, FALSE, FALSE, 'Accel', 'standard'),
                ('Bat Gust', 3, 85, TRUE, FALSE, 'Gear Point', 'standard'),
                ('Bear Scratch', 3, 60, FALSE, FALSE, 'Spike', 'standard'),
                ('Bear Scratch', 5, 60, FALSE, FALSE, 'Flat', 'standard'),
                ('Bison Valor', NULL, NULL, NULL, NULL, 'Disk Ball', 'high'),
                ('Bison Valor', NULL, NULL, NULL, NULL, 'Free Ball', 'standard'),
                ('Black Shell', 3, 85, TRUE, FALSE, 'Spike', 'standard'),
                ('Black Shell', 4, 60, FALSE, FALSE, 'Dot', 'standard'),
                ('Black Shell', 7, 70, FALSE, FALSE, 'Wall Ball', 'high'),
                ('Black Shell', 9, 80, FALSE, FALSE, 'Ball', 'standard'),
                ('Bullet Griffon', NULL, NULL, NULL, NULL, 'Hexa', 'standard'),
                ('Clock Mirage', 9, 65, TRUE, FALSE, 'Ball', 'standard'),
                ('Cobalt Dragoon', 2, 60, FALSE, FALSE, 'Cyclone', 'standard'),
                ('Cobalt Dragoon', 4, 55, TRUE, FALSE, 'Wall Ball', 'high'),
                ('Cobalt Dragoon', 9, 80, FALSE, FALSE, 'Flat', 'standard'),
                ('Cobalt Drake', 4, 60, FALSE, FALSE, 'Flat', 'standard'),
                ('Cobalt Drake', 9, 60, FALSE, FALSE, 'Rush', 'standard'),
                ('Crab Clamp', 9, 65, TRUE, FALSE, 'Spike', 'standard'),
                ('Crimson Garuda', 4, 70, FALSE, FALSE, 'Trans Point', 'variable'),
                ('Crimson Garuda', 7, 80, FALSE, FALSE, 'Gear Unite', 'standard'),
                ('Croco Crunch', 2, 60, FALSE, FALSE, 'Quake', 'standard'),
                ('Croco Crunch', 3, 60, FALSE, FALSE, 'Low Flat', 'low'),
                ('Cyclops Eye', 7, 55, TRUE, FALSE, 'Free Ball', 'standard'),
                ('Draciel Shield', 7, 60, FALSE, FALSE, 'Dot', 'standard'),
                ('Dragoon Storm', 4, 60, FALSE, FALSE, 'Rubber Accel', 'standard'),
                ('Dran Buster', 1, 60, FALSE, FALSE, 'Accel', 'standard'),
                ('Dran Buster', 2, 80, FALSE, FALSE, 'Quake', 'standard'),
                ('Dran Buster', 3, 70, FALSE, FALSE, 'Needle', 'standard'),
                ('Dran Buster', 5, 70, FALSE, FALSE, 'Disk Ball', 'high'),
                ('Dran Buster', 5, 80, FALSE, FALSE, 'Metal Needle', 'standard'),
                ('Dran Dagger', 4, 60, FALSE, FALSE, 'Rush', 'standard'),
                ('Dran Dagger', 4, 70, FALSE, FALSE, 'Point', 'standard'),
                ('Dran Dagger', 4, 70, FALSE, FALSE, 'Quake', 'standard'),
                ('Dran Dagger', 7, 55, TRUE, FALSE, 'Glide', 'standard'),
                ('Dran Dagger', 7, 55, TRUE, FALSE, 'Kick', 'standard'),
                ('Dran Dagger', 9, 60, FALSE, FALSE, 'Low Flat', 'low'),
                ('Dran Strike', 4, 50, FALSE, FALSE, 'Free Flat', 'standard'),
                ('Dran Sword', 3, 60, FALSE, FALSE, 'Flat', 'standard'),
                ('Dran Sword', 3, 80, FALSE, FALSE, 'Ball', 'standard'),
                ('Dran Sword', 4, 80, FALSE, FALSE, 'Disk Ball', 'high'),
                ('Dran Sword Version 2.0', 3, 60, FALSE, FALSE, 'Flat', 'standard'),
                ('Dranzer Spiral', 3, 80, FALSE, FALSE, 'Taper', 'standard'),
                ('Driger Slash', 4, 80, FALSE, FALSE, 'Point', 'standard'),
                ('Ghost Circle', 0, 80, FALSE, FALSE, 'Gear Ball', 'standard'),
                ('Ghost Circle', 4, 60, FALSE, FALSE, 'Hexa', 'standard'),
                ('Ghost Circle', 4, 60, FALSE, FALSE, 'Low Rush', 'low'),
                ('Ghost Circle', 5, 85, TRUE, TRUE, 'Disk Spike', 'high'),
                ('Glory Valkyrie', NULL, NULL, NULL, NULL, 'Low Flat', 'low'),
                ('Goat Tackle', 2, 70, FALSE, FALSE, 'Needle', 'standard'),
                ('Goat Tackle', 7, 70, FALSE, FALSE, 'Taper', 'standard'),
                ('Golem Rock', 1, 60, FALSE, FALSE, 'Under Needle', 'under'),
                ('Golem Rock', 5, 85, TRUE, TRUE, 'High Needle', 'high'),
                ('Heavens Ring', 0, 80, FALSE, FALSE, 'Disk Spike', 'high'),
                ('Heavens Ring', 6, 60, FALSE, FALSE, 'Trans Point', 'variable'),
                ('Hells Chain', 5, 60, FALSE, FALSE, 'High Taper', 'high'),
                ('Hells Chain', 9, 80, FALSE, FALSE, 'Orb', 'standard'),
                ('Hells Hammer', 3, 70, FALSE, FALSE, 'Hexa', 'standard'),
                ('Hells Hammer', 3, 85, TRUE, FALSE, 'Gear Unite', 'standard'),
                ('Hells Nether', NULL, NULL, NULL, NULL, 'Zap', 'low'),
                ('Hells Scythe', 3, 80, FALSE, FALSE, 'Ball', 'standard'),
                ('Hells Scythe', 3, 80, FALSE, FALSE, 'Flat', 'standard'),
                ('Hells Scythe', 3, 85, TRUE, FALSE, 'Gear Ball', 'standard'),
                ('Hells Scythe', 4, 60, FALSE, FALSE, 'Taper', 'standard'),
                ('Hells Scythe', 4, 80, FALSE, FALSE, 'Low Flat', 'low'),
                ('Horus Shatter', 9, 65, TRUE, FALSE, 'Gear Ball', 'standard'),
                ('Impact Drake', 7, 55, TRUE, FALSE, 'Free Ball', 'standard'),
                ('Impact Drake', 9, 60, FALSE, FALSE, 'Low Rush', 'low'),
                ('Knight Lance', 3, 60, FALSE, FALSE, 'Low Flat', 'low'),
                ('Knight Lance', 4, 60, FALSE, FALSE, 'Gear Ball', 'standard'),
                ('Knight Lance', 4, 80, FALSE, FALSE, 'High Needle', 'high'),
                ('Knight Mail', 3, 85, TRUE, FALSE, 'Bound Spike', 'variable'),
                ('Knight Shield', 3, 80, FALSE, FALSE, 'Needle', 'standard'),
                ('Knight Shield', 4, 60, FALSE, FALSE, 'Low Flat', 'low'),
                ('Knight Shield', 4, 80, FALSE, FALSE, 'Taper', 'standard'),
                ('Knight Shield', 5, 80, FALSE, FALSE, 'Taper', 'standard'),
                ('Knight Shield Version 2.0', 3, 80, FALSE, FALSE, 'Needle', 'standard'),
                ('Kong Yell', 3, 60, FALSE, FALSE, 'Gear Ball', 'standard'),
                ('Leon Claw', 0, 80, FALSE, FALSE, 'Elevate', 'low'),
                ('Leon Claw', 3, 80, FALSE, FALSE, 'High Needle', 'high'),
                ('Leon Claw', 5, 60, FALSE, FALSE, 'Point', 'standard'),
                ('Leon Crest', 4, 55, TRUE, FALSE, 'Accel', 'standard'),
                ('Leon Crest', 7, 60, FALSE, FALSE, 'Gear Needle', 'standard'),
                ('Leon Crest', 9, 80, FALSE, FALSE, 'Kick', 'standard'),
                ('Lightning L-Drago (Rapid-Hit Type)', 1, 60, FALSE, FALSE, 'Flat', 'standard'),
                ('Lightning L-Drago (Upper Type)', 1, 60, FALSE, FALSE, 'Flat', 'standard'),
                ('Luster Dragoon', 6, 60, FALSE, FALSE, 'Low Cyclone', 'low'),
                ('Mammoth Tusk', 2, 80, FALSE, FALSE, 'Elevate', 'low'),
                ('Mammoth Tusk', 3, 60, FALSE, FALSE, 'Taper', 'standard'),
                ('Mammoth Tusk', 7, 60, FALSE, FALSE, 'Spike', 'standard'),
                ('Medusa Stun', 9, 60, FALSE, FALSE, 'Gear Ball', 'standard'),
                ('Meteor Dragoon', 3, 70, FALSE, FALSE, 'Jolt', 'standard'),
                ('Mummy Curse', 4, 60, FALSE, FALSE, 'Cyclone', 'standard'),
                ('Mummy Curse', 7, 55, TRUE, FALSE, 'Wedge', 'standard'),
                ('Orochi Cluster', 6, 60, FALSE, FALSE, 'Low Flat', 'low'),
                ('Phoenix Feather', 2, 60, FALSE, FALSE, 'Needle', 'standard'),
                ('Phoenix Rudder', 4, 70, FALSE, FALSE, 'Low Flat', 'low'),
                ('Phoenix Rudder', 9, 70, FALSE, FALSE, 'Glide', 'standard'),
                ('Phoenix Wing', 5, 80, FALSE, FALSE, 'Hexa', 'standard'),
                ('Phoenix Wing', 9, 60, FALSE, FALSE, 'Gear Flat', 'standard'),
                ('Phoenix Wing', 9, 80, FALSE, FALSE, 'Disk Ball', 'high'),
                ('Ptera Swing', 3, 80, FALSE, FALSE, 'Ball', 'standard'),
                ('Ptera Swing', 7, 70, FALSE, FALSE, 'Ball', 'standard'),
                ('Rhino Horn', 3, 80, FALSE, FALSE, 'Spike', 'standard'),
                ('Rhino Horn', 5, 80, FALSE, FALSE, 'Quake', 'standard'),
                ('Rock Leone', 6, 80, FALSE, FALSE, 'Gear Needle', 'standard'),
                ('Samurai Calibur', 6, 70, FALSE, FALSE, 'Merge', 'high'),
                ('Samurai Saber', 2, 70, FALSE, FALSE, 'Level', 'standard'),
                ('Samurai Saber', 9, 65, TRUE, FALSE, 'Low Orb', 'low'),
                ('Samurai Steel', 4, 80, FALSE, FALSE, 'Taper', 'standard'),
                ('Samurai Steel', 5, 70, FALSE, FALSE, 'Gear Flat', 'standard'),
                ('Scorpio Spear', 0, 70, FALSE, FALSE, 'Zap', 'low'),
                ('Seize Jaguar', NULL, NULL, NULL, NULL, 'High Needle', 'high'),
                ('Shark Edge', 1, 60, FALSE, FALSE, 'Quake', 'standard'),
                ('Shark Edge', 2, 60, FALSE, FALSE, 'Gear Point', 'standard'),
                ('Shark Edge', 3, 60, FALSE, FALSE, 'Low Flat', 'low'),
                ('Shark Edge', 3, 80, FALSE, FALSE, 'Flat', 'standard'),
                ('Shark Edge', 4, 70, FALSE, FALSE, 'Elevate', 'low'),
                ('Shark Edge', 4, 80, FALSE, FALSE, 'Needle', 'standard'),
                ('Shark Edge', 5, 60, FALSE, FALSE, 'Gear Flat', 'standard'),
                ('Shark Gill', 4, 70, FALSE, FALSE, 'Orb', 'standard'),
                ('Shark Gill', 5, 60, FALSE, FALSE, 'Free Ball', 'standard'),
                ('Shark Scale', 4, 50, FALSE, FALSE, 'Under Flat', 'under'),
                ('Shelter Drake', 3, 60, FALSE, FALSE, 'Dot', 'standard'),
                ('Shelter Drake', 5, 70, FALSE, FALSE, 'Orb', 'standard'),
                ('Shelter Drake', 7, 80, FALSE, FALSE, 'Gear Point', 'standard'),
                ('Shinobi Knife', 4, 60, FALSE, FALSE, 'Low Flat', 'low'),
                ('Shinobi Knife', 4, 80, FALSE, FALSE, 'High Needle', 'high'),
                ('Shinobi Shadow', 1, 80, FALSE, FALSE, 'Metal Needle', 'standard'),
                ('Shinobi Shadow', 3, 70, FALSE, FALSE, 'Gear Point', 'standard'),
                ('Shinobi Shadow', 3, 80, FALSE, FALSE, 'Flat', 'standard'),
                ('Shinobi Shadow', 9, 60, FALSE, FALSE, 'Low Flat', 'low'),
                ('Shinobi Shuriken', NULL, NULL, NULL, NULL, 'Gear Flat', 'standard'),
                ('Shinobi Shuriken', NULL, NULL, NULL, NULL, 'Low Flat', 'low'),
                ('Sieg Superion', 0, 70, FALSE, FALSE, 'Low Point', 'low'),
                ('Silver Wolf', 3, 80, FALSE, FALSE, 'Free Ball', 'standard'),
                ('Silver Wolf', 9, 70, FALSE, FALSE, 'Rush', 'standard'),
                ('Sphinx Cowl', 1, 80, FALSE, FALSE, 'Gear Flat', 'standard'),
                ('Sphinx Cowl', 4, 80, FALSE, FALSE, 'High Taper', 'high'),
                ('Sphinx Cowl', 5, 60, FALSE, FALSE, 'Orb', 'standard'),
                ('Sphinx Cowl', 9, 80, FALSE, FALSE, 'Gear Needle', 'standard'),
                ('Storm Pegasis', 3, 70, FALSE, FALSE, 'Rubber Accel', 'standard'),
                ('Storm Spriggan', 2, 70, FALSE, FALSE, 'Merge', 'high'),
                ('Tricera Press', 5, 85, TRUE, TRUE, 'Bound Spike', 'variable'),
                ('Tricera Spiky', 9, 80, FALSE, FALSE, 'Gear Needle', 'standard'),
                ('Tyranno Beat', 1, 60, FALSE, FALSE, 'Rubber Accel', 'standard'),
                ('Tyranno Beat', 3, 60, FALSE, FALSE, 'Needle', 'standard'),
                ('Tyranno Beat', 3, 60, FALSE, FALSE, 'Spike', 'standard'),
                ('Tyranno Beat', 4, 70, FALSE, FALSE, 'Quake', 'standard'),
                ('Tyranno Roar', 1, 70, FALSE, FALSE, 'Level', 'standard'),
                ('Tyranno Roar', 9, 60, FALSE, FALSE, 'Gear Flat', 'standard'),
                ('Unicorn Sting', 3, 70, FALSE, FALSE, 'Dot', 'standard'),
                ('Unicorn Sting', 4, 60, FALSE, FALSE, 'Point', 'standard'),
                ('Unicorn Sting', 5, 60, FALSE, FALSE, 'Gear Point', 'standard'),
                ('Victory Valkyrie', 2, 60, FALSE, FALSE, 'Rubber Accel', 'standard'),
                ('Viking Hack', 4, 55, TRUE, FALSE, 'Orb', 'standard'),
                ('Viper Tail', 3, 80, FALSE, FALSE, 'High Needle', 'high'),
                ('Viper Tail', 3, 85, TRUE, FALSE, 'Low Orb', 'low'),
                ('Viper Tail', 4, 60, FALSE, FALSE, 'Flat', 'standard'),
                ('Viper Tail', 5, 60, FALSE, FALSE, 'Flat', 'standard'),
                ('Viper Tail', 5, 70, FALSE, FALSE, 'Dot', 'standard'),
                ('Viper Tail', 5, 80, FALSE, FALSE, 'Orb', 'standard'),
                ('Weiss Tiger', 3, 60, FALSE, FALSE, 'Unite', 'standard'),
                ('Weiss Tiger', 3, 85, TRUE, FALSE, 'Wall Ball', 'high'),
                ('Weiss Tiger', 4, 80, FALSE, FALSE, 'Low Rush', 'low'),
                ('Whale Wave', 1, 80, FALSE, FALSE, 'Gear Flat', 'standard'),
                ('Whale Wave', 3, 80, FALSE, FALSE, 'Gear Ball', 'standard'),
                ('Whale Wave', 4, 70, FALSE, FALSE, 'High Needle', 'high'),
                ('Whale Wave', 5, 80, FALSE, FALSE, 'Elevate', 'low'),
                ('Whale Wave', 7, 60, FALSE, FALSE, 'Kick', 'standard'),
                ('Wizard Arrow', 3, 60, FALSE, FALSE, 'Taper', 'standard'),
                ('Wizard Arrow', 4, 60, FALSE, FALSE, 'Needle', 'standard'),
                ('Wizard Arrow', 4, 80, FALSE, FALSE, 'Ball', 'standard'),
                ('Wizard Arrow', 4, 80, FALSE, FALSE, 'Gear Ball', 'standard'),
                ('Wizard Arrow', 4, 80, FALSE, FALSE, 'Needle', 'standard'),
                ('Wizard Arrow', 4, 80, FALSE, FALSE, 'Orb', 'standard'),
                ('Wizard Arrow Version 2.0', 4, 80, FALSE, FALSE, 'Ball', 'standard'),
                ('Wizard Rod', 1, 60, FALSE, FALSE, 'Rush', 'standard'),
                ('Wizard Rod', 5, 70, FALSE, FALSE, 'Disk Ball', 'high'),
                ('Wyvern Gale', 0, 80, FALSE, FALSE, 'Cyclone', 'standard'),
                ('Wyvern Gale', 2, 60, FALSE, FALSE, 'Spike', 'standard'),
                ('Wyvern Gale', 3, 60, FALSE, FALSE, 'Taper', 'standard'),
                ('Wyvern Gale', 5, 80, FALSE, FALSE, 'Gear Ball', 'standard'),
                ('Wyvern Hover', 2, 80, FALSE, FALSE, 'Gear Needle', 'standard'),
                ('Wyvern Hover', 3, 85, TRUE, FALSE, 'Needle', 'standard'),
                ('Wyvern Hover', 8, 80, FALSE, FALSE, 'Ball', 'standard'),
                ('Xeno Xcalibur', 3, 60, FALSE, FALSE, 'Gear Flat', 'standard')
                
        ) AS data(blade_name,ratchet_sides,ratchet_height,is_simple,has_metal_ring,bit_name,bit_height)
        JOIN catalog.blades AS blade 
            ON blade.name = data.blade_name
        LEFT JOIN catalog.ratchets AS ratchet
            ON ratchet.sides = data.ratchet_sides AND ratchet.height = data.ratchet_height
            AND ratchet.has_metal_ring = data.has_metal_ring AND ratchet.is_simple = data.is_simple
        JOIN catalog.bits AS bits
            ON bits.name = data.bit_name AND bits.height = data.bit_height::catalog.bit_height
        WHERE
            ratchet.id IS NOT NULL OR 
            (data.ratchet_sides IS NULL AND data.ratchet_height IS NULL AND data.is_simple IS NULL AND data.has_metal_ring IS NULL);
        GET DIAGNOSTICS rows_affected = ROW_COUNT;
        RAISE NOTICE 'Rows selected: %', rows_affected;
    END $$;



    -- Seed data for Cx Combos
    DO $$
    DECLARE
        rows_affected INT := 0;
    BEGIN
        INSERT INTO catalog.cx_combos(
            lock_chip_id,
            main_blade_id,
            over_blade_id,
            metal_blade_id,
            assist_blade_id,
            ratchet_id,
            bit_id
        )
        SELECT lock_chip.id,main_blade.id,over_blade.id,metal_blade.id,assist_blade.id, ratchet.id, bits.id
        FROM (
            VALUES
                ('Bahamut', NULL, 'Break', 'Blitz', 'Knuckle', 1, 50, FALSE, FALSE, 'Ignition', 'under'),
                ('Brachio', NULL, 'Outer', 'Whip', 'Wheel', 5, 70, FALSE, FALSE, 'Narrow', 'standard'),
                ('Bucks', 'Antlers', NULL, NULL, 'Bumper', 2, 60, FALSE, FALSE, 'Dot', 'standard'),
                ('Bucks', 'Antlers', NULL, NULL, 'Bumper', 2, 60, FALSE, FALSE, 'High Needle', 'high'),
                ('Cerberus', 'Dark', NULL, NULL, 'Wheel', 1, 60, FALSE, FALSE, 'Flat', 'standard'),
                ('Cerberus', 'Flame', NULL, NULL, 'Wheel', 5, 80, FALSE, FALSE, 'Wall Ball', 'high'),
                ('Cerberus', 'Reaper', NULL, NULL, 'Bumper', 0, 80, FALSE, FALSE, 'Wall Ball', 'high'),
                ('Croco', NULL, 'Tough', 'Tread', 'Quell', 5, 50, FALSE, FALSE, 'Gear Needle', 'standard'),
                ('Drake', 'Brave', NULL, NULL, 'Gravity', 4, 70, FALSE, FALSE, 'Ignition', 'under'),
                ('Dran', 'Arc', NULL, NULL, 'Slash', 2, 70, FALSE, FALSE, 'Kick', 'standard'),
                ('Dran', 'Brave', NULL, NULL, 'Slash', 6, 60, FALSE, FALSE, 'Vortex', 'standard'),
                ('Emperor', 'Might', NULL, NULL, 'Heavy', NULL, NULL, NULL, NULL, 'Operate', 'variable'),
                ('Enlil', NULL, 'I', 'Hurricane', 'Slash', 7, 55, TRUE, FALSE, 'Taper', 'standard'),
                ('Fox', 'Brush', NULL, NULL, 'Jaggy', 0, 80, FALSE, FALSE, 'Disk Ball', 'high'),
                ('Fox', 'Brush', NULL, NULL, 'Jaggy', 2, 60, FALSE, FALSE, 'Unite', 'standard'),
                ('Fox', 'Brush', NULL, NULL, 'Jaggy', 9, 70, FALSE, FALSE, 'Gear Rush', 'standard'),
                ('Hells', 'Arc', NULL, NULL, 'Turn', 3, 85, TRUE, FALSE, 'Orb', 'standard'),
                ('Hells', 'Brave', NULL, NULL, 'Jaggy', 3, 60, FALSE, FALSE, 'Gear Flat', 'standard'),
                ('Hells', 'Reaper', NULL, NULL, 'Turn', 4, 70, FALSE, FALSE, 'Kick', 'standard'),
                ('Hornet', 'Fort', NULL, NULL, 'Round', 7, 60, FALSE, FALSE, 'Taper', 'standard'),
                ('Knight', NULL, 'Guard', 'Fortress', 'Vertical', 8, 70, FALSE, FALSE, 'Under Needle', 'under'),
                ('Kraken', 'Wriggle', NULL, NULL, 'Slash', 3, 70, FALSE, FALSE, 'Orb', 'standard'),
                ('Kraken', 'Wriggle', NULL, NULL, 'Slash', 3, 85, TRUE, FALSE, 'Orb', 'standard'),
                ('Leon', 'Fang', NULL, NULL, 'Turn', 4, 60, FALSE, FALSE, 'Accel', 'standard'),
                ('Leon', 'Fang', NULL, NULL, 'Turn', 4, 60, FALSE, FALSE, 'Unite', 'standard'),
                ('Pegasus', 'Blast', NULL, NULL, 'Assault', NULL, NULL, NULL, NULL, 'Turbo', 'variable'),
                ('Pegasus', 'Brush', NULL, NULL, 'Massive', 3, 85, TRUE, FALSE, 'Wedge', 'standard'),
                ('Perseus', 'Dark', NULL, NULL, 'Bumper', 6, 80, FALSE, FALSE, 'Wedge', 'standard'),
                ('Phoenix', NULL, 'Weight', 'Force', 'Heavy', 3, 65, TRUE, TRUE, 'Metal Taper', 'standard'),
                ('Phoenix', 'Flare', NULL, NULL, 'Zillion', 9, 80, FALSE, FALSE, 'Wall Wedge', 'high'),
                ('Ragna', NULL, 'Flow', 'Rage', 'Erase', 4, 55, TRUE, FALSE, 'Yielding', 'high'),
                ('Rhino', 'Reaper', NULL, NULL, 'Charge', 4, 55, TRUE, FALSE, 'Dot', 'standard'),
                ('Sol', 'Brave', NULL, NULL, 'Charge', 9, 70, FALSE, FALSE, 'Trans Point', 'variable'),
                ('Sol', 'Eclipse', NULL, NULL, 'Dual', 5, 70, FALSE, FALSE, 'Trans Kick', 'variable'),
                ('Unicorn', NULL, 'Peak', 'Delta', 'Odd', 1, 80, FALSE, FALSE, 'Gear Rush', 'standard'),
                ('Unicorn', NULL, 'Peak', 'Delta', 'Odd', 3, 60, FALSE, FALSE, 'Gear Unite', 'standard'),
                ('Valkyrie', 'Volt', NULL, NULL, 'Slash', 4, 70, FALSE, FALSE, 'Vortex', 'standard'),
                ('Whale', 'Flame', NULL, NULL, 'Massive', 3, 85, TRUE, FALSE, 'High Taper', 'high'),
                ('Wizard', 'Arc', NULL, NULL, 'Round', 4, 55, TRUE, FALSE, 'Low Orb', 'low'),
                ('Wolf', 'Flame', NULL, NULL, 'Dual', 9, 65, TRUE, FALSE, 'Level', 'standard'),
                ('Wolf', 'Hunt', NULL, NULL, 'Free', 0, 60, FALSE, FALSE, 'Disk Ball', 'high')
        ) AS data(lock_chip_name,main_blade_name,over_blade_name,metal_blade_name,assist_blade_name,ratchet_sides,
        ratchet_height,is_simple,has_metal_ring,bit_name,bit_height)
        JOIN catalog.lock_chips AS lock_chip 
            ON lock_chip.name = data.lock_chip_name
        LEFT JOIN catalog.main_blades AS main_blade
            ON main_blade.name = data.main_blade_name
        LEFT JOIN catalog.over_blades AS over_blade
            ON over_blade.name = data.over_blade_name
        LEFT JOIN catalog.metal_blades AS metal_blade
            ON metal_blade.name = data.metal_blade_name
        LEFT JOIN catalog.assist_blades AS assist_blade
            ON assist_blade.name = data.assist_blade_name
        LEFT JOIN catalog.ratchets AS ratchet
            ON ratchet.sides = data.ratchet_sides AND ratchet.height = data.ratchet_height
            AND ratchet.has_metal_ring = data.has_metal_ring AND ratchet.is_simple = data.is_simple
        JOIN catalog.bits AS bits
            ON bits.name = data.bit_name AND bits.height = data.bit_height::catalog.bit_height
        WHERE
            ratchet.id IS NOT NULL OR 
            (data.ratchet_sides IS NULL AND data.ratchet_height IS NULL AND data.is_simple IS NULL AND data.has_metal_ring IS NULL);
        GET DIAGNOSTICS rows_affected = ROW_COUNT;
        RAISE NOTICE 'Rows selected: %', rows_affected;
    END $$;
END;
COMMIT;

