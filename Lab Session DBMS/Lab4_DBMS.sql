create database `order-directory`;

use `order-directory`;

create table if not exists supplier (
SUPP_ID int primary key,	
SUPP_NAME varchar(50) not null,
SUPP_CITY varchar(50) not null,
SUPP_PHONE varchar(50) not null
);

create table if not exists customer (
CUS_ID int not null,	
CUS_NAME varchar(20) not null,
CUS_PHONE varchar(10) not null,
CUS_CITY varchar(30) not null,
CUS_GENDER char,
primary key(CUS_ID)
);

create table if not exists category (
CAT_ID int not null,
CAT_NAME varchar(20) not null,
primary key (CAT_ID)
);

create table if not exists product (
PRO_ID int not null,
PRO_NAME varchar(20) not null default "Dummy",
PRO_DESC varchar(60),
CAT_ID int not null,
primary key (PRO_ID),
foreign key (CAT_ID) references CATEGORY (CAT_ID)
);

create table if not exists supplier_pricing (
PRICING_ID int not null,
PRO_ID int not null,
SUPP_ID int not null,
SUPP_PRICE int default 0,
primary key (PRICING_ID),
foreign key (PRO_ID) references PRODUCT (PRO_ID),
foreign key (SUPP_ID) references SUPPLIER (SUPP_ID)
);

create table if not exists `order` (
ORD_ID int not null,
ORD_AMOUNT int not null,
ORD_DATE date not null,
CUS_ID int not null,
PRICING_ID int not null,
primary key (ORD_ID),
foreign key (CUS_ID) references CUSTOMER (CUS_ID),
foreign key (PRICING_ID) references SUPPLIER_PRICING (PRICING_ID)
);

create table if not exists rating (
RAT_ID int not null,
ORD_ID int not null,
RAT_RATSTARS INT not null,
primary key (RAT_ID),
foreign key (ORD_ID) references `order` (ORD_ID)
);

insert into SUPPLIER values(1,"Rajesh Retails","Delhi",'1234567890');
insert into SUPPLIER values(2,"Appario Ltd.","Mumbai",'2589631470');
insert into SUPPLIER values(3,"Knome products","Banglore",'9785462315');
insert into SUPPLIER values(4,"Bansal Retails","Kochi",'8975463285');
insert into SUPPLIER values(5,"Mittal Ltd.","Lucknow",'7898456532');


insert into CUSTOMER values(1,"AAKASH",'9999999999',"DELHI",'M');
insert into CUSTOMER values(2,"AMAN",'9785463215',"NOIDA",'M');
insert into CUSTOMER values(3,"NEHA",'9999999999',"MUMBAI",'F');
insert into CUSTOMER values(4,"MEGHA",'9994562399',"KOLKATA",'F');
insert into CUSTOMER values(5,"PULKIT",'7895999999',"LUCKNOW",'M');


insert into CATEGORY values(1,"BOOKS");
insert into CATEGORY values(2,"GAMES");
insert into CATEGORY values(3,"GROCERIES");
insert into CATEGORY values(4,"ELECTRONICS");
insert into CATEGORY values(5,"CLOTHES");


insert into PRODUCT values(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
insert into PRODUCT values(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
insert into PRODUCT values(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
insert into PRODUCT values(4,"OATS","Highly Nutritious from Nestle",3);
insert into PRODUCT values(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
insert into PRODUCT values(6,"MILK","1L Toned MIlk",3);
insert into PRODUCT values(7,"Boat EarPhones","1.5Meter long Dolby Atmos",4);
insert into PRODUCT values(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
insert into PRODUCT values(9,"Project IGI","compatible with windows 7 and above",2);
insert into PRODUCT values(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
insert into PRODUCT values(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
insert into PRODUCT values(12,"Train Your Brain","By Shireen Stephen",1);


INSERT INTO SUPPLIER_PRICING VALUES(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUES(2,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUES(3,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUES(4,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUES(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);


INSERT INTO `ORDER` VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO `ORDER` VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO `ORDER` VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO `ORDER` VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO `ORDER` VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO `ORDER` VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO `ORDER` VALUES(107,789,"2021-09-01",3,7);
INSERT INTO `ORDER` VALUES(108,780,"2021-09-07",5,6);
INSERT INTO `ORDER` VALUES(109,3000,"2021-09-10",5,3);
INSERT INTO `ORDER` VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO `ORDER` VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO `ORDER` VALUES(112,789,"2021-09-16",4,7);
INSERT INTO `ORDER` VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO `ORDER` VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO `ORDER` VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO `ORDER` VALUES(116,99,"2021-09-17",2,14);


INSERT INTO RATING VALUES(1,101,4);
INSERT INTO RATING VALUES(2,102,3);
INSERT INTO RATING VALUES(3,103,1);
INSERT INTO RATING VALUES(4,104,2);
INSERT INTO RATING VALUES(5,105,4);
INSERT INTO RATING VALUES(6,106,3);
INSERT INTO RATING VALUES(7,107,4);
INSERT INTO RATING VALUES(8,108,4);
INSERT INTO RATING VALUES(9,109,3);
INSERT INTO RATING VALUES(10,110,5);
INSERT INTO RATING VALUES(11,111,3);
INSERT INTO RATING VALUES(12,112,4);
INSERT INTO RATING VALUES(13,113,2);
INSERT INTO RATING VALUES(14,114,1);
INSERT INTO RATING VALUES(15,115,1);
INSERT INTO RATING VALUES(16,116,0);

/*
4) Display the total number of customers based on gender who have placed 
individual orders of worth at least Rs.3000
*/
select 
	count(cus_id) as NoOfCustomers, cus_gender 
from 
	customer 
where 
	cus_id in(select cus_id from `order` where ord_amount >= 3000)
group by cus_gender;

/*
5) Display all the orders along with product name ordered by a customer having Customer_Id=2
*/
select 
	product.pro_name, `order`.* 
from 
	`order`,
    supplier_pricing,
    product
where
	`order`.cus_id = 2
    and `order`.pricing_id = supplier_pricing.pricing_id
    and supplier_pricing.pro_id = product.pro_id;

/*
6) Display the Supplier details who can supply more than one product.
*/
select 
	supplier.* 
from 
	supplier 
where 
	supplier.supp_id 
    in (select 
			supp_id 
		from 
			supplier_pricing 
        group by 
			supp_id 
		having 
            count(supp_id) > 1)
group by 
	supplier.supp_id;


/*
7) Find the least expensive product from each category and print the table with category id, name, 
product name and price of the product
*/
select
	category.cat_id,
    category.cat_name,
    min(t3.min_price) as min_price
from
	category
		inner join
	(select
		product.cat_id, product.pro_name, t2.*
	from 
		product
			inner join
		(select 
			pro_id, min(supp_price) as min_price
		from
			supplier_pricing
		group by
			pro_id) as t2
		where
			t2.pro_id = product.pro_id) AS t3
	where
		t3.cat_id = category.cat_id
	group by 
		t3.cat_id;
        
        
/* 
8) Display the Id and Name of the Product ordered after “2021-10-05”.
*/
select 
	product.pro_id, product.pro_name 
from 
	`order`
inner join
	supplier_pricing on supplier_pricing.pricing_id = `order`.pricing_id
inner join
	product on product.pro_id = supplier_pricing.pro_id
where
	`order`.ord_date > '2021-10-05';


/*
9) Display customer name and gender whose names start or end with character 'A'.
*/
select 
	customer.cus_name, customer.cus_gender 
from 
	customer
where 
	customer.cus_name like 'A%' 
    or customer.cus_name like '%A';
    
    
/*
10) Create a stored procedure to display supplier id, name, Rating(Average rating of all the products sold by every customer) 
and Type_of_Service. For Type_of_Service, If rating =5, 
print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average
Service” else print “Poor Service”. Note that there should be one rating per supplier.
*/

DELIMITER //
CREATE PROCEDURE GetSupplierDetails()
BEGIN
    SELECT 
    report.supp_id,
    report.supp_name,
    report.Average,
    CASE
        WHEN report.Average = 5 THEN 'Excellent Service'
        WHEN report.Average > 4 THEN 'Good Service'
        WHEN report.Average > 2 THEN 'Average Service'
        ELSE 'Poor Service'
    END AS Type_of_Service
FROM
    (SELECT 
        final.supp_id, supplier.supp_name, final.Average
    FROM
        (SELECT 
        test2.supp_id,
            SUM(test2.rat_ratstars) / COUNT(test2.rat_ratstars) AS Average
    FROM
        (SELECT 
        supplier_pricing.supp_id, test.ORD_ID, test.RAT_RATSTARS
    FROM
        supplier_pricing
    INNER JOIN (SELECT 
        `order`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS
    FROM
        `order`
    INNER JOIN rating ON rating.`ord_id` = `order`.ord_id) AS test ON test.pricing_id = supplier_pricing.pricing_id) AS test2
    GROUP BY supplier_pricing.supp_id) AS final
    INNER JOIN supplier
    WHERE
        final.supp_id = supplier.supp_id) AS report;
END //
DELIMITER 


call GetSupplierDetails();