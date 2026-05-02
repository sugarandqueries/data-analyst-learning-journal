SELECT p.part_number, l.hub_code, i.quantity
FROM inventory i
JOIN parts p ON i.part_id = p.part_id
JOIN locations l ON i.location_id = l.location_id
WHERE i.quantity < 5;