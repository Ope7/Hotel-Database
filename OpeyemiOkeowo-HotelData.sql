
USE hotel;

INSERT INTO amenities (name)
VALUES
('microwave'),
('jacuzzi'),
('refrigerator'),
('oven');

INSERT INTO guest 
(firstName, lastName, address, city, stateAbbr, zip, phoneNo)
VALUES
('Opeyemi', 'Okeowo', '11 Avenue Krypton', 'Montreal', 'QC', '55555', '(514) 626-5738'),
('Mark', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', '(291) 553-0508'),
('Bettyann ', 'Seery', '750 Wintergreen Dr.', 'Wasilla', 'AK', '99654', '(478) 277-9632'),
('Duane ', 'Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', '(308) 494-0198'),
('Karie ', 'Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096', '(214) 730-0298'),
('Aurore', 'Luechtefeld', '762 Wild Rose Street', 'Saginaw', 'MI', '48601', '(377) 507-0974'),
('Zachery', 'Seery', '7 Poplar Dr.', 'Arvada', 'CO', '80003', '(814) 485-2615'),
('Jeremiah', 'Pendergrass', '70 Oakwood St.', 'Zion', 'IL', '60099', '(279) 491-0960'),
('Walter', 'Holaway', '7556 Arrowhead St.', 'Cumberland', 	'RI', '02864', '(446) 396-6785'),
('Wilfred', 'Vise', '77 West Surrey Street', 'Oswego', 	'NY', '13126', '(834) 727-1001'),
('Maritza', 'Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015', '(446) 351-6860'),
('Joleen', 'Tison', '87 Queen St.', 'Drexel Hill', 'PA', '19026', '(231) 893-2755');


INSERT INTO roomType 
(roomTypeName, standardOccupancy, maximumOccupancy, extraPersonCost)
VALUES
('double', 2, 4, 10.00),
('single', 2, 2, null),
('suite', 3, 8, 20.00);


INSERT INTO room 
(roomNo, adaAccessible, roomTypeId, basePrice)
VALUE
(201, 0, 1, 199.99),
(202, 1, 1, 174.99),
(203, 0, 1, 199.99),
(204, 1, 1, 174.99),
(205, 0, 2, 174.99),
(206, 1, 2, 149.99),
(207, 0, 2, 174.99),
(208, 1, 2, 149.99),
(301, 0, 1, 199.99),
(302, 1, 1, 174.99),
(303, 0, 1, 199.99),
(304, 1, 1, 174.99),
(305, 0, 2, 174.99),
(306, 1, 2, 149.99),
(307, 0, 2, 174.99),
(308, 1, 2, 149.99),
(401, 0, 3, 399.99),
(402, 1, 3, 399.99);


INSERT INTO roomAmenities
(roomNo, amenityId)
VALUES
(201, 1),
(201, 2),
(202, 3),
(203, 1),
(203, 2),
(204, 3),
(205, 1),
(205, 3),
(205, 2),
(206, 1),
(206, 3),
(207, 1),
(207, 3),
(207, 2),
(208, 1),
(208, 3),
(301, 1),
(301, 2),
(302, 3),
(303, 1),
(303, 2),
(304, 3),
(305, 1),
(305, 3),
(305, 2),
(306, 1),
(306, 3),
(307, 1),
(307, 3),
(307, 2),
(308, 1),
(308, 3),
(401, 1),
(401, 3),
(401, 4),
(402, 1),
(402, 3),
(402, 4);

INSERT INTO reservation
(startDate, EndDate)
VALUES
('2023-2-2', '2023-2-4'),
('2023-2-5', '2023-2-10'),
('2023-2-22', '2023-2-24'),
('2023-3-6', '2023-3-7'),
('2023-3-17', '2023-3-20'),
('2023-3-18', '2023-3-23'),
('2023-3-29', '2023-3-31'),
('2023-3-31', '2023-4-5'),
('2023-4-9', '2023-4-13'),
('2023-4-23', '2023-4-24'),
('2023-5-30', '2023-6-2'),
('2023-6-10', '2023-6-14'),
('2023-6-10', '2023-6-14'),
('2023-6-17', '2023-6-18'),
('2023-6-28', '2023-7-2'),
('2023-7-13', '2023-7-14'),
('2023-7-18', '2023-7-21'),
('2023-7-28', '2023-7-29'),
('2023-8-30', '2023-9-1'),
('2023-9-16', '2023-9-17'),
('2023-9-13', '2023-9-15'),
('2023-11-22', '2023-11-25'),
('2023-11-22', '2023-11-25'),
('2023-11-22', '2023-11-25'),
('2023-12-24', '2023-12-28');

INSERT INTO roomReservation
(roomNo, reservationId)
VALUES
(308, 1),
(203, 2),
(305, 3),
(201, 4),
(307, 5),
(302, 6),
(202, 7),
(304, 8),
(301, 9),
(207, 10),
(401, 11),
(206, 12),
(208, 13),
(304, 14),
(205, 15),
(204, 16),
(401, 17),
(303, 18),
(305, 19),
(208, 20),
(203, 21),
(401, 22),
(206, 23),
(301, 24),
(302, 25);



INSERT INTO guests
(reservationId, guestId, quantityAdults, quantityChildren)
VALUES
(1, 2, 1, 0),
(2, 3, 2, 1),
(3, 4, 2, 0),
(4, 5, 2, 2),
(5, 1, 1, 1),
(6, 6, 3, 0),
(7, 7,2, 2),
(8, 8, 2, 0),
(9, 9, 1, 0),
(10, 10, 1, 1),
(11, 11, 2, 4),
(12, 12, 2, 0), 
(13, 12, 1, 0),
(14, 6, 3, 0),
(15, 1, 2, 0),
(16, 9, 3, 1),
(17, 10, 4, 2),
(18, 3, 2, 1),
(19, 3, 1, 0),
(20, 2, 2, 0),
(21, 5, 2, 2),
(22, 4, 2, 2),
(23, 2, 2, 0),
(24, 2, 2, 2),
(25, 11, 2, 0);

SELECT * FROM guest;
SELECT * FROM amenities;
SELECT * FROM roomType;
SELECT * FROM room;
SELECT * FROM reservation;
SELECT * FROM roomAmenities;
SELECT * FROM roomReservation;

-- Delete Jeremiah Pendergrass and his reservations
DELETE FROM guests gs
WHERE gs.guestId = (
	SELECT gt.guestId
    FROM guest gt
    WHERE firstName='Jeremiah' AND lastName='Pendergrass');

SELECT * 
FROM guest gt
WHERE gt.firstName='Jeremiah' AND lastName='Pendergrass';
-- search for Jermiah to see if he exists - no, he is removed.

SELECT * 
FROM guests gs
WHERE gs.guestId = (
	SELECT gt.guestId
    FROM guest gt
    WHERE firstName='Jeremiah' AND lastName='Pendergrass');

-- Removing Jeremiah from guest
DELETE FROM guest gt
WHERE gt.guestId = 8;

SELECT * FROM guest;
-- yes Jeremiah has been removed, (id=8)
