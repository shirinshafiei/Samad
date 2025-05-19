use samad_db;
create table Persons (
    person_id int primary key auto_increment,
    national_id nvarchar(10) unique not null,
    first_name nvarchar(100) not null,
    last_name nvarchar(100) not null
);
create table Students (
    student_id int primary key auto_increment,
    person_id int unique not null,
    student_number varchar(20) unique not null,
    major varchar(100) not null ,
    foreign key (person_id) references Persons(person_id)
);
create table Professors (
    professor_id int primary key auto_increment,
    person_id int unique not null ,
    employee_number varchar(20) unique not null ,
    department varchar(100) not null,
    academic_rank varchar(50) not null ,
    foreign key (person_id) references Persons(person_id)
);
create table foodItems (
    food_id int primary key auto_increment,
    name nvarchar(30) not null ,
    price decimal(10,2) not null

);
create table dailyMenus (
   menu_id int primary key auto_increment,
   menu_date date not null UNIQUE
);
create table MenuItems (
    menu_item_id int primary key auto_increment,
    menu_id int not null ,
    food_id int not null ,
    price decimal(10,2) not null ,
    foreign key (menu_id) references DailyMenus(menu_id),
    foreign key (food_id) references FoodItems(food_id),
    unique (menu_id, food_id)
);
create table Orders (
    order_id int primary key auto_increment,
    menu_id int  not null ,
    person_id int not null ,
    foreign key (menu_id) references MenuItems(menu_id) ,
    foreign key (person_id) references Persons(person_id)
);
create table OrderItems (
    order_item_id int primary key auto_increment,
    order_id int not null ,
    menu_item_id int not null ,
    quantity int not null ,
    foreign key (order_id) references Orders(order_id),
    foreign key (menu_item_id) references MenuItems(menu_item_id)
);