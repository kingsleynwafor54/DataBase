select sku,sku_description,(buyer+' in '+department) as sponsor
from sku_data
order by sku;


select buyer, sku_data.SKU_description,
sum(extendedPrice) as MAN
from sku_data, order_item
where sku_data.SKU = order_item.sku
group by buyer, sku_data.SKU, SKU_Description
order by MAN DESC;

select *
from retail_order JOIN order_item
ON retail_order.OrderNumber = order_item.OrderNumber
WHERE OrderYear =2017
ORDER BY RETAIL_ORDER.OrderNumber, order_item.SKU;