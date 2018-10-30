<h1> SQL_school </h1>
Seznameni se s SQL nad ukazkovych schematem HR v databazi Oracle.

<h3> Ukoly </h3>

<h4> Sada 1 </h4>
<ol>
  <li> Najdi zaměstnance s nejnižším platem a vypiš ho. </li>
  <li> Najdi zaměstnance s nejvyšším platem a vypiš ho. </li>
  <li> Zobraz průměrné platy zaměstnanců dle zařazení (JOB_ID) pomocí GROUP BY. </li>
  <li> Vypiš FIRST_NAME a počet výskytů z tabulky HR.EMPLOYEES.</li>
  <li> Vypiš FIRST_NAME a počet výskytů z tabulky HR.EMPLOYEES  (GROUP BY) seřazených sestupně podle počtu výskytů.</li>
  <li> Vypiš TOP 10 nejčastějších FIRST_NAME z tabulky HR.EMPLOYEES.</li>
  <li> Které oddělení má nejvíce zamestnancu? </li>
 </ol>

<h4> Sada 2 </h4>
<ol>
  <li> Vyber 10 programatoru, kteri jsou ve spolecnosti nejkratsi dobu. </li>
  <li> Vyber 10 Sales Manageru, kteri jsou ve spolecnosti nejdelsi dobu. </li>
  <li> Kolik firma mesicne vyplaci zamestnancum na vyplatach rozdeleno podle pozic. </li>
</ol>

<h4> Sada 3 </h4>
<ol>
  <li> Vypis nazvy objednanych produktu pro zakaznika s custemer_id = 101 </li>
  <li> Kolik ma celkem zaplatit zakaznik s customer_id = 101 na objednavkach? </li>
  <li> Kolik produktu koupil vyse zmineny zakaznik online a kolik primo u prodejce. </li>
  <li> Vypis top 10 nejdrazsich produktu v obchode. </li>
  <li> Vpis top 10 nejprodavanejsich produktu v obchode. </li>
</ol>
<div>
Poznamka: Pro reseni nasledujici ulohy je nutne pouzit schema Order entity pod zkratkou OE a nasledujici tabulky: 
<br>
<pre>
select * from OE.orders
select * from OE.order_items
select * from OE.product_information
</pre>
</div>
