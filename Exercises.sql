-- Date 3rd April 2023
select title from books where title like '%stories' limit 3;
 
 select title, pages from books order by pages desc limit 1;
 
 select concat(Title, ' - ' , released_year) As Summary from books order by released_year desc limit 3;
 
 Select title, author_lname from books where author_lname like '% %' ;
 
 select title, released_year, stock_quantity from books order by stock_quantity asc limit 3;
 
 select title, author_lname from books order by title , author_lname;
 
 select upper(concat('My favourite author is', ' ', Author_fname ,' ',Author_lname, ' ', '!')) as Yell from books order by author_lname;
 
 -- String Function Exercise
 select reverse(upper('why does my cat look at me with such hatred'));

 select replace(title,' ','->') as Title from books;
 
 -- date 5 April, 2023
 select * from products;
 
 select product_name as 'Product', category , unit_price as 'Price' from products;
 
 select product_name as 'Product', category , unit_price as 'Price' from products where units_in_stock > 20;
 
 select product_name as 'Product', category , unit_price as 'Price' from products where units_in_stock > 20
 order by category asc, unit_price desc;
 
 
 select count(title) from books where title like '%the%';
 
 select title from books where title like '%the%';
 
 
 
 
 
 
 
 
 
 
 select author_lname as forwards , reverse(author_lname) as backwards from books;
 
 select upper(concat_ws(' ',author_fname, author_lname)) as 'Full Name In Caps' from books;
 
 select concat_ws(' ', title , 'was released in' , released_year) as blurbs from books;
 
 select title, length(title) as 'Character Count' from books;
 
SELECT 
    CONCAT(LEFT(title, 15), '...') AS 'Short Title',
    CONCAT(author_lname, ',', author_fname) AS Author,
    CONCAT(stock_quantity, ' ', 'in stock') AS Quantity
FROM
    books;