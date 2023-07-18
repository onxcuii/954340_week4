USE restaurant;
DROP Procedure if exists week4;

delimiter //
create procedure week4()
begin
	insert into Customer (customer_id, customerName, phone)
    values (01,'Somchai','0987654321');
    insert into Customer (customer_id, customerName, phone)
    values (02,'Somsri','0876543211');

	insert into Menu (menu_id, menuName, menuDescription,price)
    values (01,'Padthai',"It is typically made with rice noodles, shrimp, peanuts, a scrambled egg, and bean sprouts. The ingredients are fried in a wok.",'100');
    insert into Menu (menu_id, menuName, menuDescription,price)
    values (02,'Tomyum',"The soup base depends on the exact sub-type but is generally water, coconut milk, or chicken or other broth.",'150');
    
	insert into orders (order_id, order_date, total_price,customer_id,table_number)
    values (01,'2023-07-18 11:42:41','1500','01','11');
    insert into orders (order_id, order_date, total_price,customer_id,table_number)
    values (02,'2023-07-18 12:13:05','2000','02','22');
    
    insert into orders_details (order_details_id, quantity, special_instruction,menu_id,order_id)
    values (01,'1','No bean sprouts','02','01');
	insert into orders_details (order_details_id, quantity, special_instruction,menu_id,order_id)
    values (02,'2','No spicy','01','02');
end//
delimiter ;

call week4();
