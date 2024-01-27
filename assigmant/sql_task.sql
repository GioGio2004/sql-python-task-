-- N:1

select g.name as genre, sum(t.unitprice) as totalsalesmade
from genre as g
join track as t on g.genreid = t.genreid
group by g.genreid , g.name
order by totalsalesmade desc
limit 3;


-- N:2	
select e.firstname , e.lastname, sum(i.total) as total
from employee as e 
join customer as c on e.employeeid = c.supportrepid
join invoice as i on c.customerid = i.customerid
group by e.employeeid, e.firstname, e.lastname
order by total desc;


-- N:3 
select p.name as p_name, count(pt.trackid) as track_num
from playlist p join playlisttrack pt on p.playlistid = pt.playlistid
group by p.playlistid
order by track_num desc limit 5;


-- N:4

select c.firstname, c.lastname,
count(i.invoiceid) as num_purchases
from customer as c
join invoice as i ON c.customerid = i.customerid
group by c.customerid, c.firstname, c.lastname
order by num_purchases desc;



