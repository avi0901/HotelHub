use hotel;

drop table booking;
CREATE TABLE Booking (
  Booking_Id INT(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  Hotel_ID VARCHAR(30),
  Name VARCHAR(30),
  FromCity VARCHAR(30),
  PhoneNumber VARCHAR(30),
  No_Of_People INT(5) Default 1 NOT NULL,
  CheckInDate DATE,
  CheckOutDate DATE,
  Cancelled BOOLEAN DEFAULT false, 
  PRIMARY KEY (Booking_Id)
);

CREATE TABLE hotels (
  hotelID VARCHAR(30) NOT NULL,
  hotelName VARCHAR(30),
  State VARCHAR(30),
  City VARCHAR(30),
  Area VARCHAR(30),
  Price DECIMAL(10,2),
  PRIMARY KEY (hotelID)
);

CREATE TABLE users(
	userid varchar(30) NOT NULL,
    hotelID varchar(30) NOT NULL,
    password varchar(30) NOT NULL,
    PRIMARY KEY (hotelID)
);

INSERT INTO hotels (hotelID, hotelName, State, City, Area, Price)
VALUES 
  ('HH03601', 'Hotel AZ', 'MP', 'Jabalpur', 'Civil Lines', 1200),
  ('HH03602', 'Hotel BZ', 'MP', 'Jabalpur', 'Cantt', 800),
  ('HH03603', 'Hotel CZ', 'MP', 'Jabalpur', 'Russel Chowk', 1000),
  ('HH03604', 'Hotel DZ', 'MP', 'Jabalpur', 'Gorakhpur', 1300),
  ('HH03605', 'Hotel EZ', 'MP', 'Jabalpur', 'Napier Town', 1500),
  ('HH03606', 'Hotel FZ', 'MP', 'Bhopal', 'MP Nagar', 800),
  ('HH03607', 'Hotel GZ', 'MP', 'Bhopal', 'New Market', 1200),
  ('HH03608', 'Hotel HZ', 'MP', 'Bhopal', 'Arera Colony', 1000),
  ('HH03609', 'Hotel IZ', 'MP', 'Bhopal', 'Shyamla Hills', 1300),
  ('HH03610', 'Hotel JZ', 'MP', 'Bhopal', 'TT Nagar', 900),
  ('HH03611', 'Hotel KZ', 'MP', 'Gwalior', 'Lashkar', 1100),
  ('HH03612', 'Hotel LZ', 'MP', 'Gwalior', 'Morar', 800),
  ('HH03613', 'Hotel MZ', 'MP', 'Gwalior', 'City Center', 1300),
  ('HH03614', 'Hotel NZ', 'MP', 'Gwalior', 'Thatipur', 1200),
  ('HH03615', 'Hotel OZ', 'MP', 'Gwalior', 'Fort', 1400);



select * from booking;
select * from users;
select * from hotels;

INSERT INTO hotels (hotelID, hotelName, State, City, Area, Price)
VALUES 
  ('HH021', 'Hotel A', 'MP', 'Indore', 'Navlakha', 1000),
  ('HH022', 'Hotel B', 'MP', 'Indore', 'Navlakha', 1500),
  ('HH023', 'Hotel C', 'MP', 'Indore', 'Navlakha', 1200),
  ('HH024', 'Hotel D', 'MP', 'Indore', 'Navlakha', 2000),
  ('HH025', 'Hotel E', 'MP', 'Indore', 'Navlakha', 1800),
  ('HH026', 'Hotel F', 'MP', 'Indore', 'Bhawarkua', 2200),
  ('HH027', 'Hotel G', 'MP', 'Indore', 'Bhawarkua', 890),
  ('HH028', 'Hotel H', 'MP', 'Indore', 'Bhawarkua', 2000),
  ('HH029', 'Hotel I', 'MP', 'Indore', 'Vijaynagar', 1500),
  ('HH030', 'Hotel J', 'MP', 'Indore', 'Vijaynagar', 1300),
  ('HH031', 'Hotel K', 'MP', 'Indore', 'Vijaynagar', 1800),
  ('HH032', 'Hotel L', 'MP', 'Indore', 'Vijaynagar', 2100),
  ('HH033', 'Hotel M', 'MP', 'Indore', 'Palasia', 2500),
  ('HH034', 'Hotel N', 'MP', 'Indore', 'Palasia', 1200),
  ('HH035', 'Hotel O', 'MP', 'Indore', 'Palasia', 2200);

INSERT INTO hotels (hotelID, hotelName, State, City, Area, Price)
VALUES 
  ('HH001', 'Hotel P', 'Maharastra', 'Pune', 'Aundh', 1000),
  ('HH002', 'Hotel Q', 'Maharastra', 'Pune', 'Aundh', 1500),
  ('HH003', 'Hotel R', 'Maharastra', 'Pune', 'Koregaon Park', 1200),
  ('HH004', 'Hotel S', 'Maharastra', 'Pune', 'Koregaon Park', 2000),
  ('HH005', 'Hotel T', 'Maharastra', 'Pune', 'Baner', 1800),
  ('HH006', 'Hotel U', 'Maharastra', 'Mumbai', 'Colaba', 2200),
  ('HH007', 'Hotel V', 'Maharastra', 'Mumbai', 'Colaba', 2400),
  ('HH008', 'Hotel W', 'Maharastra', 'Mumbai', 'Andheri', 2000),
  ('HH009', 'Hotel X', 'Maharastra', 'Mumbai', 'Andheri', 1500),
  ('HH010', 'Hotel Y', 'Maharastra', 'Mumbai', 'Bandra', 1300),
  ('HH011', 'Hotel Z', 'Maharastra', 'Nasik', 'Satpur', 1800),
  ('HH012', 'Hotel AA', 'Maharastra', 'Nasik', 'Satpur', 2100),
  ('HH013', 'Hotel BB', 'Maharastra', 'Nasik', 'Gangapur Road', 2500),
  ('HH014', 'Hotel CC', 'Maharastra', 'Nasik', 'Gangapur Road', 2000),
  ('HH015', 'Hotel DD', 'Maharastra', 'Nasik', 'Panchavati', 2200),
  ('HH016', 'Hotel EE', 'Maharastra', 'Nagpur', 'Sadar', 2000),
  ('HH017', 'Hotel FF', 'Maharastra', 'Nagpur', 'Sadar', 1500),
  ('HH018', 'Hotel GG', 'Maharastra', 'Nagpur', 'Ramdaspeth', 1800),
  ('HH019', 'Hotel HH', 'Maharastra', 'Nagpur', 'Ramdaspeth', 2100),
  ('HH020', 'Hotel II', 'Maharastra', 'Nagpur', 'Dharampeth', 2500);


Delete from hotels;


INSERT INTO users (hotelID, userID, password)
SELECT hotelID, CONCAT('FI', FLOOR(RAND() * 90000) + 10000), CONCAT('pass', FLOOR(RAND() * 90000) + 10000)
FROM hotels;

select * from booking;
select * from users;
select * from hotels;

INSERT INTO Booking (Booking_Id, Hotel_ID, Name, FromCity, PhoneNumber, CheckInDate, CheckOutDate, Cancelled)
VALUES
  (98452, 'HH027', 'Amit Kumar', 'Delhi', '9876543210', '2023-05-01', '2023-05-04', false),
  (32145, 'HH022', 'Priya Sharma', 'Mumbai', '9876543210', '2023-05-05', '2023-05-07', false),
  (56789, 'HH024', 'Rahul Singh', 'Bangalore', '9876543210', '2023-05-08', '2023-05-10', true),
  (45321, 'HH023', 'Sneha Gupta', 'Pune', '9876543210', '2023-05-11', '2023-05-13', false),
  (78965, 'HH025', 'Rajesh Patel', 'Chennai', '9876543210', '2023-05-14', '2023-05-16', false),
  (12345, 'HH032', 'Anjali Desai', 'Kolkata', '9876543210', '2023-05-17', '2023-05-20', true),
  (23456, 'HH035', 'Kunal Mehta', 'Jaipur', '9876543210', '2023-05-21', '2023-05-23', false),
  (87654, 'HH021', 'Neha Verma', 'New York', '9876543210', '2023-05-24', '2023-05-27', false),
  (76543, 'HH028', 'Vikas Singh', 'London', '9876543210', '2023-05-28', '2023-05-30', false),
  (54321, 'HH030', 'Simran Kaur', 'Paris', '9876543210', '2023-06-01', '2023-06-04', true);

UPDATE Booking
SET No_of_people = 3
WHERE Booking_id IN (23456,76543);
select * from booking;

DELETE from booking where Name = "Aahana";


INSERT INTO hotels (hotelID, hotelName, State, City, Area, Price)
VALUES 
  ('HH03921', 'Hotel PA', 'MP', 'Indore', 'LIG', 890),
  ('HH03922', 'Hotel PB', 'MP', 'Indore', 'LIG', 1300),
  ('HH03923', 'Hotel PC', 'MP', 'Indore', 'LIG', 1700),
  ('HH03924', 'Hotel PD', 'MP', 'Indore', 'LIG', 2100);
  
  


SELECT h.hotelName, h.Price, b.Booking_Id, b.Name, b.FromCity, b.PhoneNumber, b.No_Of_People from booking b JOIN hotels h ON b.Hotel_Id=h.hotelID WHERE b.Booking_Id = 12345;