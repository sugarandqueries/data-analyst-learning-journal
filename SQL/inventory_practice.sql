DROP TABLE IF EXISTS parts;
DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS vendors;
DROP TABLE IF EXISTS receipts;
DROP TABLE IF EXISTS transfers;
DROP TABLE IF EXISTS cycle_counts;

CREATE TABLE parts (
    part_id INTEGER PRIMARY KEY,
    part_number TEXT,
    description TEXT,
    category TEXT
);

CREATE TABLE locations (
    location_id INTEGER PRIMARY KEY,
    hub_code TEXT,
    city TEXT,
    state TEXT
);

CREATE TABLE vendors (
    vendor_id INTEGER PRIMARY KEY,
    vendor_name TEXT
);

CREATE TABLE inventory (
    inventory_id INTEGER PRIMARY KEY,
    part_id INTEGER,
    location_id INTEGER,
    quantity INTEGER,
    last_updated DATE
);

CREATE TABLE receipts (
    receipt_id INTEGER PRIMARY KEY,
    part_id INTEGER,
    vendor_id INTEGER,
    location_id INTEGER,
    qty_received INTEGER,
    receipt_date DATE
);

CREATE TABLE transfers (
    transfer_id INTEGER PRIMARY KEY,
    part_id INTEGER,
    from_location INTEGER,
    to_location INTEGER,
    qty INTEGER,
    transfer_date DATE
);

CREATE TABLE cycle_counts (
    count_id INTEGER PRIMARY KEY,
    part_id INTEGER,
    location_id INTEGER,
    system_qty INTEGER,
    counted_qty INTEGER,
    count_date DATE
);

INSERT INTO parts VALUES
(1,'BAT-100','Battery Pack','Power'),
(2,'SCR-210','LCD Screen','Display'),
(3,'CAB-500','USB Cable','Accessory'),
(4,'DRV-300','Hard Drive','Storage'),
(5,'FAN-110','Cooling Fan','Cooling');

INSERT INTO locations VALUES
(1,'DAL01','Dallas','TX'),
(2,'HOU01','Houston','TX'),
(3,'PHX01','Phoenix','AZ'),
(4,'ATL01','Atlanta','GA');

INSERT INTO vendors VALUES
(1,'TechSource'),
(2,'Global Parts Co'),
(3,'Fast Supply');

INSERT INTO inventory VALUES
(1,1,1,25,'2026-05-01'),
(2,2,1,3,'2026-05-01'),
(3,3,2,40,'2026-05-01'),
(4,4,3,0,'2026-05-01'),
(5,5,4,7,'2026-05-01'),
(6,1,2,12,'2026-05-01'),
(7,2,3,2,'2026-05-01');

INSERT INTO receipts VALUES
(1,1,1,1,20,'2026-04-28'),
(2,2,2,1,5,'2026-04-29'),
(3,3,3,2,50,'2026-04-30'),
(4,5,1,4,10,'2026-04-27');

INSERT INTO transfers VALUES
(1,2,1,3,2,'2026-04-30'),
(2,1,2,1,5,'2026-04-29'),
(3,4,3,1,1,'2026-04-28');

INSERT INTO cycle_counts VALUES
(1,1,1,25,24,'2026-05-01'),
(2,2,1,3,1,'2026-05-01'),
(3,3,2,40,40,'2026-05-01'),
(4,5,4,7,9,'2026-05-01');