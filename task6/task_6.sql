SELECT * FROM purushotham.online_retail ;
select online_retail.`InvoiceDate` ,month(`InvoiceDate`)as month from online_retail;
SELECT online_retail.`InvoiceDate`,MONTHNAME(STR_TO_DATE(`InvoiceDate`, '%d/%m/%Y %H:%i')) AS month_name FROM online_retail;