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


Kolik ma celkem zaplatit zakaznik s customer_id = 101 na objednavkach?
Kolik produktu koupil vyse zmineny zakaznik online a kolik primo u prodejce.
Vypis top 10 nejdrazsich produktu v obchode.
Vpis top 10 nejprodavanejsich produktu v obchode.
