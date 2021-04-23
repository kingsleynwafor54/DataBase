use cape_codd;
select sum(extendedprice) as WaterSportRevenue
from order_item
 where sku in (100100,100200,101100,101200);
 
 select sku
 from sku_data
 where department='water sports';
 
 select sum(extendedprice) as waterSportRevenue
 from order_item
 where sku in
 (select sku
 from sku_data
 where department='water sports');
 
 select distinct buyer,department
 from sku_data
 where sku in
 (select sku
 from order_item
 where OrderNumber in
 (select orderNumber 
 from retail_order
 where orderMonth='January' and orderYear=2018));
  
  select *
  from    retail_order, order_item;
  -- This is  a cross Join which connects eachrow in one table with every row in another table.
  
  select *
  from retail_order,order_item
  where retail_order.OrderNumber=order_item.orderNumber;
  
    select *
  from retail_order,order_item
  where retail_order.OrderNumber=order_item.orderNumber
  order by retail_order.OrderNumber,retail_item.sku;
  
  
  select  buyer,sku_data.sku, sku_description,
  sum(ExtendedPrice) as buyerskurevenue
  from sku_data,order_item
  where sku_data.sku=order_item.sku
  group  by buyer, sku_data.SKU, SKU_Description
  order by buyerskurevenue desc;
  
  select *
  from retail_order join order_item
  on retail_order.orderNumber = order_item.OrderNumber
  order by retail_order.OrderNumber,order_item.SKU;
  
  select *
  from retail_order join order_item
  on retail_order.OrderNumber = order_item.OrderNumber
  where OrderYear=2017
  order by retail_order.OrderNumber = order_item.sku;