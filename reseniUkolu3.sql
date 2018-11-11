-- Vypis nazvy objednanych produktu pro zakaznika s custemer_id = 101
select Product_name
from OE.product_information
where PRODUCT_ID in
(
    select PRODUCT_id
    from OE.order_items
    where order_id in
    (
        select ORDER_ID
        from OE.orders
        where customer_id = 101
    )
)


-- Kolik ma celkem zaplatit zakaznik s customer_id = 101 na objednavkach?
select sum(unit_price * quantity)
from OE.order_items
where Order_id in
(
    select Order_id
    from OE.orders
    where customer_id = 101
)


--Kolik produktu koupil vyse zmineny zakaznik online a kolik primo u prodejce.
select order_mode, count(order_mode)
from OE.orders
where customer_id = 101
group by order_mode


Vypis top 10 nejdrazsich produktu v obchode.
Vpis top 10 nejprodavanejsich produktu v obchode.
