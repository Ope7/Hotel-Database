-- Creating and defining the Database
DROP DATABASE IF EXISTS hotel;
CREATE DATABASE hotel;
USE hotel;



CREATE TABLE guest (
	GuestId INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(256),
    City VARCHAR(100) ,
    StateAbbr CHAR(2),
    Zip CHAR(5),
    PhoneNo VARCHAR(14),
    CONSTRAINT pk_guest
		PRIMARY KEY (GuestId)
    );

CREATE TABLE roomType ( 
	RoomTypeId INT NOT NULL AUTO_INCREMENT, 
    RoomTypeName VARCHAR(15),
    StandardOccupancy INT NOT NULL,
    MaximumOccupancy INT NOT NULL,
    ExtraPersonCost DECIMAL(10,2),
    CONSTRAINT pk_roomTypes
		PRIMARY KEY (RoomTypeId)
);
    
CREATE TABLE room (
	RoomNo INT NOT NULL,
    AdaAccessible BOOLEAN NOT NULL,
    RoomTypeId INT NOT NULL,
    BasePrice DOUBLE(10,2),
    CONSTRAINT pk_room
		PRIMARY KEY (RoomNo),
	CONSTRAINT fk_room_roomType
		FOREIGN KEY (roomTypeId)
		REFERENCES roomType(roomTypeId)
);

CREATE TABLE amenities (
	AmenityId INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT pk_amenity
		PRIMARY KEY (AmenityId)
);

CREATE TABLE reservation (
	ReservationId INT NOT NULL AUTO_INCREMENT,
    StartDate DATE NOT NULL, 
    EndDate DATE NOT NULL,
    CONSTRAINT pk_reservation
		PRIMARY KEY (ReservationId)
);

CREATE TABLE roomAmenities (
	RoomNo INT NOT NULL,
	AmenityId INT NOT NULL,
    CONSTRAINT pk_roomAmenities
		PRIMARY KEY (AmenityId, RoomNo),
	CONSTRAINT fk_roomAmenities_room
		FOREIGN KEY (RoomNo)
        REFERENCES room(RoomNo),
	CONSTRAINT fk_roomAmenities_amenity
		FOREIGN KEY (AmenityId)
        REFERENCES amenities(AmenityId)
);

CREATE TABLE roomReservation (
	RoomNo INT NOT NULL,
    ReservationId INT NOT NULL,
    CONSTRAINT pk_roomsReserved
		PRIMARY KEY (RoomNo, ReservationId),
	CONSTRAINT fk_roomsReserved_room
		FOREIGN KEY (RoomNo)
        REFERENCES room(RoomNo),
	CONSTRAINT fk_roomsReserved_reservation
		FOREIGN KEY (ReservationId)
        REFERENCES reservation(ReservationId)
);

CREATE TABLE guests (
	GuestId INT NOT NULL,
    ReservationId INT NOT NULL,
    QuantityAdults INT NOT NULL,
    QuantityChildren INT NOT NULL,
    CONSTRAINT pk_guestId
		PRIMARY KEY (GuestId, ReservationId),
	CONSTRAINT fk_guests_guest
		FOREIGN KEY (GuestId)
        REFERENCES guest(GuestId),
	CONSTRAINT fk_guests_reservation
		FOREIGN KEY (ReservationId)
        REFERENCES reservation(ReservationId)
);