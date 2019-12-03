/*Script to insert data into menu_item table-TYUC001*/
insert into menu_item values(default,'Sandwich',99.00,'Yes','2017-03-15','Main Course','Yes'),
                            (default,'Burger',129.00,'Yes','2017-12-23','Main Course','No'),
                            (default,'Pizza',149.00,'Yes','2018-08-21','Main Course','No'),
                            (default,'French Fries',57.00,'No','2017-07-02','Starters','Yes'),
                            (default,'Chocolate Brownie',32.00,'Yes','2022-11-02', 'Dessert','Yes');
                            
/*script to fetch data from menu_item table-TYUC001*/
select me_id,me_name,me_price,me_free_delivery,me_category from menu_item;
                            
                            
/*script to fetch data from menu_item table-TYUC002*/
select me_id,me_name,me_free_delivery,me_price,me_category from menu_item where me_active='Yes' AND me_date_of_launch <=now();

select * from menu_item where me_id=3;

/*Script to fetch data from menu_item table-TYUC003*/
update menu_item set me_name='chocolate',me_date_of_launch='2017/01/18',me_category='Dessert' where me_id=5;

TRUNCATE table menu_item;

/*script to add data into user table-TYUC004*/
INSERT INTO user values(default,'vishnu'),
                       (default,'Ramji');
                       
/*script to add data into user table-TYUC004*/                       
INSERT INTO cart values(default,1,null),
                       (default,2,1),
                       (default,2,2),
                       (default,2,5);       
                       
/*Script to fetch menu items from the cart of a particular user_TYUC005*/
select mi.me_id,mi.me_name,mi.me_price,mi.me_active,mi.me_date_of_launch,mi.me_category,mi.me_free_delivery
from menu_item  mi inner join cart ct on mi.me_id=ct.ct_pr_id and ct.ct_us_id=2;

/* script to get all menu items in user's cart - TYUC005*/
SELECT SUM(menu_item.me_price) FROM menu_item INNER JOIN cart ON menu_item.me_id = cart.ct_pr_id where cart.ct_us_id = 2;

DELETE from cart where ct_us_id=2 and ct_pr_id=3;


