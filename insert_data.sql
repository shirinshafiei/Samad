insert into persons(national_id, first_name, last_name) values
 (2123456, 'Shirin', 'Shafiei'),
 (1234567, 'Maryam', 'Sadeghi'),
 (2345678,'Zhina', 'Dadashian');
insert into students(person_id, student_number, major) values
 (1, 40313019, 'CS'),
 (3,40313021, 'CS');
insert into professors(person_id, employee_number, department, academic_rank) values
 (2, 1234, 'MCS', 'professor'),
 (4, 2345, 'Physics', 'professor');
insert into fooditems(name, price) values
 ('pizza', 250000),
 ('pasta', 200000),
 ('sandwich', 200000);
insert into dailymenus(menu_date) values
 ('2024-02-29'),
 ('2024-03-29'),
 ('2025-03-01');
insert into menuitems(menu_id, food_id, price) values
 (1, 1, 300000),
 (1, 2, 250000),
 (2, 3, 250000),
 (2, 1, 200000),
 (3, 1, 150000);
insert into orders(menu_id, person_id) values
 (1, 1),
 (2, 3),
 (1, 4);
insert into orderitems(order_id, menu_item_id, quantity) values
 (1, 1, 3),
 (2, 3, 2),
 (3, 2, 1);


