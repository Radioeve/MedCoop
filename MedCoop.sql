create database db_Medcoop;
use db_Medcoop;
create table Doctor(
ID_Doctor int not null primary key,
FIO_doctor varchar(35) not null,
Phone int not null,
Specialization varchar(20) not null,
experience int not null
);
create table Patient(
ID_Patient int not null primary key,
FIO_Patient varchar(35) not null,
Address_Patient varchar(40) not null,
Sex varchar(15) not null,
Date_Birth longtext not null
);
create table Visit(
ID_Visit int not null primary key,
Date_Visit longtext not null,
Place varchar(30) not null,
Simptomy varchar(100) not null,
Diagnosis varchar(100) not null,
ID_Vis int not null,
foreign key(ID_Vis) references Doctor(ID_Doctor),
foreign key(ID_Visit) references Patient(ID_Patient)
);
create table Medicine(
ID_Medicine int not null primary key,
name_Medicine varchar(30) not null,
Usage_Medicine varchar(100) not null,
Action_Medicine varchar(80) not null,
Effects_Medicine varchar(80) not null
);
create table Appointments(
ID_Appointments int not null primary key,
ID_App int not null,
foreign key(ID_Appointments) references Visit(ID_Visit),
foreign key(ID_App) references Medicine(ID_Medicine),
Amount longtext not null
);
insert into Doctor(ID_Doctor,FIO_doctor,Phone,Specialization,experience) values
(01,"Фомина Светлана Васильевна","890504521","Терапевт",3),
(02,"Гуськов Геннадий Васильевич","890756782","Кардиолог",5),
(03,"Нусинов Евгений Владимирович","898076541","Аллерголог-иммунолог",2),
(04,"Литовченко Инна Владимировна","889058901","Хирург",4),
(05,"Спиридонова Марина Андреевна","88006715","Фельдшер",3),
(06,"Сафарова Татьяна Васильевна","856174517","Стоматолог",6),
(07,"Баширова Ольга Евгеньевна","878254290","Невролог",7),
(08,"Самаркин Василий Андреевич","89257786","Терапевт",10),
(09,"Захарченко Елена Александровна","89991465","Эндокринолог",12),
(10,"Корнеев Алексей Александрович","88201769","Оториноларинголог",15);

insert into Patient(ID_Patient,FIO_Patient,Address_Patient,Sex,Date_Birth) values
(01,"Никифорова Регина Казимировна","Бульвар Ломоносова 52","Женщина","25.04.1979"),
(02,"Голотина Вероника Николаевна","Пл.Ломоносова 20","Женщина","09.10.1980"),
(03,"Чумакова Зинаида Антониновна","Спуск Чехова 67","Женщина","25.04.1990"),
(04,"Чирков Иван Макарович","Пер.Космонавтов 86","Мужчина","08.04.1983"),
(05,"Марин Герасим Самуилович","Шоссе Ленина 60","Мужчина","08.01.1981"),
(06,"Шыркунова Валентина Елисеевна","Ул Славы 19","Женщина","27.09.1986"),
(07,"Дуванов Онуфрий Феоктистович","Ул Косиора 58","Мужчина","08.02.1990"),
(08,"Максимушкина Роза Геннадиевна","Ул 1905 года 86","Женщина","08.09.1992"),
(09,"Растогуева Ольга Нестеровна","Наб Будапештсткая 77","Женщина","03.07.1995"),
(10,"Сорокин Трофим Филиппович","Пр Сталина 33","Мужчина","25.06.1992"),
(11,"Миронов Павел Юрьевич","Бульвар Балканская 87","Мужчина","12.05.1991"),
(12,"Емец Татьяна Ивановна","Спуск Домодедовская 80","Женщина","20.12.1998");

insert into Visit(ID_Visit,Date_Visit,Place,Simptomy,Diagnosis,ID_Vis) values 
(01,"01.10.2001","Дом","Высокая температура, Кашель, Насморк","Простуда",01),
(02,"12.03.2007","Кабинет 12","Боль в груди, Сбивчивое дыхание", "Инфаркт миокарда",02),
(03,"20.05.2004","Дом","Жар, Головная боль", "Грипп",02),
(04,"16.04.2010","Кабинет 10","Лихорадка, Озноб, Выраженная слабость","Пневмония",01),
(05,"20.09.2002","Кабинет 15", "Потемнение эмали, боль","Кариес",03),
(06,"13.10.2005","Кабинет 19", "Зуд, Чихание","Аллергический конъюнктивит",04),
(07,"30.01.2012","Кабинет 21", "Сонливость днем, Поверхностный сон, Сильная утомляемость","Бессонница",05),
(08,"11.02.2000","Кабинет 30", "Странная мимика, Отсутствие реакции на звуки, Нарушения речевой функции","Тугоухость",06),
(09,"09.11.2003","Дом", "Тошнота и горечь во рту, Жжение в горле,Хронический кашель","Изжога",07),
(10,"18.01.2011","Кабинет 25", "Нарушение походки и ориентации в пространстве, Нарушение слуха и зрения,Проблемы с речью","Инсульт",08),
(11,"15.06.2012","Дом", "Боль вверху живота, Озноб, Тошнота","Аппендицит",09),
(12,"17.07.2007","Кабинет 5", "Потеря аппетита, Головная боль, Слабость","Ветряная оспа",10);

insert into Medicine(ID_Medicine,name_Medicine,Usage_Medicine,Action_Medicine,Effects_Medicine) values 
(01, "Урсосан", "Трансбуккально", "Снижение температуры", "Аллергическая реакция"),
(02, "Амоксициллин", "На кожу", "Для улучшения сна", "Головная боль"),
(03, "Пульмикорт", "Через дыхательные пути", "От аллергии", "Тошнота"),
(04, "Сирдалуд", "Сублингвально", "От Изжоги", "Нету"),
(05, "Мексидол", "Внутривенно", "Для работы сердца", "Головокружение"),
(06, "Аспаркам", "Подкожно", "От кашля", "Вялость"),
(07, "Амоксиклав", "Через рот", "Для лечения легких", "Сонливость"),
(08, "Милдронат", "Через рот", "От инсульта", "Нарушение сна"),
(09, "Цитофлавин", "На слизистые оболочки", "Для лечения насморка", "Боль в животе"),
(10, "Тералиджен", "Внутримышечно", "Против гриппа", "Диспепсия"),
(11, "Супрастин", "Трансбуккально", "После лечения кариеса", "Нету"),
(12, "Зиртек", "На слизистые оболочки", "От нарушений слуха","Головокружение"),
(13, "Лоратадин", "Подкожно", "Для профилактики после оспы", "Сонливость"),
(14, "Бисопролол", "Через рот", "Для профилактики после аппендицита", "Вялость");
#(15, "Канефрон, Интраназально", "Для улучшения памяти", "Нету");

insert into Appointments(ID_Appointments,Amount,ID_App) values
(01,"1 месяц",01),
(02,"5 месяцов",05),
(03,"2 недели",10),
(04,"3 недели",07),
(05,"3 дня",11),
(06,"1 месяц",03),
(07,"4 недели",02),
(08,"7 дней",12),
(09,"1 день",04),
(10,"4 месяца",08),
(11,"3 месяца",14),
(12,"3 месяца",13);

###################################ЗАПРОСЫ###########################
#1 Сколько врачей находится на учете в базе данных
select count(ID_Doctor) from Doctor;
#2 Какие специализации врачей есть на учете в базе данных
select distinct(Specialization) from doctor;
#3 Выдать список всех врачей-терапевтов, их адреса и стаж работы.
select FIO_doctor,Phone,experience from doctor
where Specialization like "терапевт";
#4 Для каждого пациента выдать список всех врачей, которые когда-либо их посещали, дату посещения и поставленный диагноз.
select FIO_Patient,FIO_doctor,Date_Visit,Diagnosis from Visit
join Patient on ID_Patient = Visit.ID_Visit
join doctor on ID_Doctor = visit.ID_Vis;
#5 Получить количество врачей-терапевтов, их средний, максимальный и минимальный стаж работы
select avg(experience), max(experience), min(experience) from Doctor
where Specialization like "терапевт";
#6 Найти всех врачей, стаж которых больше стажа любого врача-фельдшера
select FIO_Doctor,Specialization, experience from doctor
where experience > (select experience from doctor where Specialization like "Фельдшер");
#7 Выдать список медикаментов который храниться в базе данных
select name_Medicine from medicine;
#8 Получить список медикаментов которые прописаны каждому пациенту и на какой срок
select name_Medicine,FIO_Patient,Amount from appointments
join medicine on ID_Medicine = appointments.ID_App
join visit on ID_Visit = appointments.ID_Appointments
join Patient on ID_Patient = Visit.ID_Visit;
#9 Выдать список медикаментов с такими же побочными эффектами как у Мексидол
select name_Medicine from medicine
where Effects_Medicine like (select Effects_Medicine from medicine
where  name_Medicine like "Мексидол");
#10 Выдать список пациентов их адрес проживания, дату и место их посещения
select Date_Visit,Place,FIO_Patient,Address_Patient from visit
join Patient on ID_Patient = Visit.ID_Visit;

