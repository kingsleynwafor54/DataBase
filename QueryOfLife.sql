select *
from order_item
where ExtendedPrice >=100 
and ExtendedPrice<=200
order by extendedprice;

select *
from order_item 
where ExtendedPrice 
 between 100 and 200 order by ExtendedPrice;
 
 select *
 from sku_data
 where buyer like 'Pete%';  select *
 from sku_data
 where sku_description like 'Tent%';
 
select department,count(*)
from sku_data;

select  *
from retail_order
where orderTotal >avg(orderTotal);

select count(*) as numberofrowssku_data
from order_item;

 select sum(sku)
 from catalog_sku_2017;
  
 select ordernumber,sku,(quantity *price) as Ep
 from order_item
 order by OrderNumber,sku;
 
  select ordernumber,sku,(quantity / price) as dividedresult
 from order_item;
 
  select ordernumber,sku,(quantity + price) as Addresult
 from order_item;
 select *;
 
SELECT  oi.ordernumber,quantity, sd.sku,sku_description,
department,buyer
from order_item as oi left outer join sku_data as sd
on oi.sku =sd.sku
order by oi.Quantity,sd.sku;


select sku, sku_description,department 
from catalog_sku_2017
union all
select sku,sku_description,department
from CATALOG_SKU_2016;


select sku,sku_description,department


from CATALOG_SKU_2016;

select sku, sku_description
from CATALOG_SKU_2018
where department
--union
select   sku, sku_description,department
from CATALOG_SKU_2017
where sku   in (select sku
from catalog_sku_2018)

--intersect
select   sku, sku_description,department
from CATALOG_SKU_2017
where sku not  in (select sku
from catalog_sku_2018)