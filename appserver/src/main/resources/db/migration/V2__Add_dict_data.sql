-- Типы ценных бумаг
insert into investing.asset_type(id, comment, name, parent_id)
values (1, null, 'Акции', null);
insert into investing.asset_type(id, comment, name, parent_id)
values (2, null, 'Акции иностранного фонда', null);
insert into investing.asset_type(id, comment, name, parent_id)
values (3, null, 'Депозитарные расписки', null);
insert into investing.asset_type(id, comment, name, parent_id)
values (4, null, 'Еврооблигации', null);
insert into investing.asset_type(id, comment, name, parent_id)
values (5, null, 'Инвестиционные паи', null);
insert into investing.asset_type(id, comment, name, parent_id)
values (6, null, 'Ипотечные сертификаты участия', null);
insert into investing.asset_type(id, comment, name, parent_id)
values (7, null, 'Облигации', null);
insert into investing.asset_type(id, comment, name, parent_id)
values (8, null, 'Акция обыкновенная', 1);
insert into investing.asset_type(id, comment, name, parent_id)
values (9, null, 'Акции иностранного эмитента', 1);
insert into investing.asset_type(id, comment, name, parent_id)
values (10, null, 'Акция привилегированная', 1);
insert into investing.asset_type(id, comment, name, parent_id)
values (11, null, 'Акции иностранного биржевого инвестиционного фонда', 2);
insert into investing.asset_type(id, comment, name, parent_id)
values (12, null, 'Депозитарные расписки иностранного эмитента на акции', 3);
insert into investing.asset_type(id, comment, name, parent_id)
values (13, null, 'Еврооблигация', 4);
insert into investing.asset_type(id, comment, name, parent_id)
values (14, null, 'Пай биржевого ПИФа', 5);
insert into investing.asset_type(id, comment, name, parent_id)
values (15, null, 'Пай закрытого ПИФа', 5);
insert into investing.asset_type(id, comment, name, parent_id)
values (16, null, 'Пай интервального ПИФа', 5);
insert into investing.asset_type(id, comment, name, parent_id)
values (17, null, 'Пай открытого ПИФа', 5);
insert into investing.asset_type(id, comment, name, parent_id)
values (18, null, 'Ипотечный сертификат участия', 6);
insert into investing.asset_type(id, comment, name, parent_id)
values (19, null, 'Облигации иностранного эмитента', 7);
insert into investing.asset_type(id, comment, name, parent_id)
values (20, null, 'Облигация биржевая', 7);
insert into investing.asset_type(id, comment, name, parent_id)
values (21, null, 'Облигация субфедеральная', 7);
insert into investing.asset_type(id, comment, name, parent_id)
values (22, null, 'Облигация корпоративная', 7);
insert into investing.asset_type(id, comment, name, parent_id)
values (23, null, 'Облигация федерального займа', 7);
insert into investing.asset_type(id, comment, name, parent_id)
values (24, null, 'Облигация муниципальная', 7);
insert into investing.asset_type(id, comment, name, parent_id)
values (25, null, 'Облигация Банка России', 7);

-- Типы транзакции
insert into investing.transaction_type (id, name)
values (1, 'Покупка');
insert into investing.transaction_type (id, name)
values (2, 'Продажа');

-- Сектора экономики
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (10, true, 'Энергетика', 'SECTOR', NULL),
       (15, true, 'Материалы', 'SECTOR', NULL),
       (20, true, 'Промышленность', 'SECTOR', NULL),
       (25, true, 'Потребительские товары выборочного спроса', 'SECTOR', NULL),
       (30, false, 'Потребительские товары повседневного спроса', 'SECTOR', NULL),
       (35, false, 'Здравоохранение', 'SECTOR', NULL),
       (40, false, 'Финансы', 'SECTOR', NULL),
       (45, false, 'Информационные технологии', 'SECTOR', NULL),
       (50, false, 'Коммуникационные услуги', 'SECTOR', NULL),
       (55, false, 'Коммунальные услуги', 'SECTOR', NULL);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (60, false, 'Недвижимость', 'SECTOR', NULL),
       (1010, NULL, 'Энергетика', 'INDUSTRY_GROUP', 10),
       (1510, NULL, 'Материалы', 'INDUSTRY_GROUP', 15),
       (2010, NULL, 'Средства производства', 'INDUSTRY_GROUP', 20),
       (2020, NULL, 'Коммерческие и профессиональные услуги', 'INDUSTRY_GROUP', 20),
       (2030, NULL, 'Транспорт', 'INDUSTRY_GROUP', 20),
       (2510, NULL, 'Автомобили и комплектующие', 'INDUSTRY_GROUP', 25),
       (2520, NULL, 'Потребительские товары длительного пользования и одежда', 'INDUSTRY_GROUP', 25),
       (2530, NULL, 'Потребительские услуги', 'INDUSTRY_GROUP', 25),
       (2550, NULL, 'Розничная торговля', 'INDUSTRY_GROUP', 25);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (3010, NULL, 'Розничная торговля продуктами питания и товарами повседневного спроса', 'INDUSTRY_GROUP', 30),
       (3020, NULL, 'Продукты питания, напитки и табачные изделия', 'INDUSTRY_GROUP', 30),
       (3030, NULL, 'Бытовые изделия и предметы личного пользования', 'INDUSTRY_GROUP', 30),
       (3510, NULL, 'Медицинское оборудование и услуги', 'INDUSTRY_GROUP', 35),
       (3520, NULL, 'Фармацевтика, биотехнология и науки о жизни', 'INDUSTRY_GROUP', 35),
       (4010, NULL, 'Банки', 'INDUSTRY_GROUP', 40),
       (4020, NULL, 'Многоотраслевые финансы', 'INDUSTRY_GROUP', 40),
       (4030, NULL, 'Страхование', 'INDUSTRY_GROUP', 40),
       (4510, NULL, 'Программное обеспечение и услуги', 'INDUSTRY_GROUP', 45),
       (4520, NULL, 'Технологическое оборудование и техника', 'INDUSTRY_GROUP', 45);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (4530, NULL, 'Полупроводники и полупроводниковое оборудование', 'INDUSTRY_GROUP', 45),
       (5010, NULL, 'Телекоммуникационные услуги', 'INDUSTRY_GROUP', 50),
       (5020, NULL, 'СМИ и развлечения', 'INDUSTRY_GROUP', 50),
       (5510, NULL, 'Коммунальные услуги', 'INDUSTRY_GROUP', 55),
       (6010, NULL, 'Недвижимость', 'INDUSTRY_GROUP', 60),
       (101010, NULL, 'Энергетическое оборудование и услуги', 'INDUSTRY', 1010),
       (101020, NULL, 'Нефть, газ и горючее топливо', 'INDUSTRY', 1010),
       (151010, NULL, 'Химикалии', 'INDUSTRY', 1510),
       (151020, NULL, 'Строительные материалы', 'INDUSTRY', 1510),
       (151030, NULL, 'Контейнеры и упаковки', 'INDUSTRY', 1510);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (151040, NULL, 'Металлы и руды', 'INDUSTRY', 1510),
       (151050, NULL, 'Бумажные и лесные товары', 'INDUSTRY', 1510),
       (201010, NULL, 'Аэрокосмическое и оборонное производство', 'INDUSTRY', 2010),
       (201020, NULL, 'Строительные товары', 'INDUSTRY', 2010),
       (201030, NULL, 'Строительство и инженерия', 'INDUSTRY', 2010),
       (201040, NULL, 'Электрическое оборудование', 'INDUSTRY', 2010),
       (201050, NULL, 'Промышленные конгломераты', 'INDUSTRY', 2010),
       (201060, NULL, 'Машины', 'INDUSTRY', 2010),
       (201070, NULL, 'Торговые компании и дистрибьюторы', 'INDUSTRY', 2010),
       (202010, NULL, 'Коммерческие услуги и поставки', 'INDUSTRY', 2020);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (202020, NULL, 'Профессиональные услуги', 'INDUSTRY', 2020),
       (203010, NULL, 'Авиаперевозки и логистика', 'INDUSTRY', 2030),
       (203020, NULL, 'Авиакомпании', 'INDUSTRY', 2030),
       (203030, NULL, 'Морской транспорт', 'INDUSTRY', 2030),
       (203040, NULL, 'Автомобильный и железнодорожный транспорт', 'INDUSTRY', 2030),
       (203050, NULL, 'Транспортная инфраструктура', 'INDUSTRY', 2030),
       (251010, NULL, 'Автомобильные комплектующие', 'INDUSTRY', 2510),
       (251020, NULL, 'Автомобили', 'INDUSTRY', 2510),
       (252010, NULL, 'Хозяйственные товары длительного пользования', 'INDUSTRY', 2520),
       (252020, NULL, 'Товары для отдыха', 'INDUSTRY', 2520);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (252030, NULL, 'Текстиль, одежда и предметы роскоши', 'INDUSTRY', 2520),
       (253010, NULL, 'Отели, рестораны и объекты досуга', 'INDUSTRY', 2530),
       (253020, NULL, 'Многоотраслевые потребительские услуги', 'INDUSTRY', 2530),
       (255010, NULL, 'Дистрибьюторы', 'INDUSTRY', 2550),
       (255020, NULL, 'Розничный прямой и Интернет маркетинг', 'INDUSTRY', 2550),
       (255030, NULL, 'Разнообразная розничная торговля', 'INDUSTRY', 2550),
       (255040, NULL, 'Специализированная розничная торговля', 'INDUSTRY', 2550),
       (301010, NULL, 'Розничная торговля продуктами питания и товарами повседневного спроса', 'INDUSTRY', 3010),
       (302010, NULL, 'Напитки', 'INDUSTRY', 3020),
       (302020, NULL, 'Продукты питания', 'INDUSTRY', 3020);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (302030, NULL, 'Табачные изделия', 'INDUSTRY', 3020),
       (303010, NULL, 'Бытовые изделия', 'INDUSTRY', 3030),
       (303020, NULL, 'Предметы личного пользования', 'INDUSTRY', 3030),
       (351010, NULL, 'Медицинское оборудование и снабжение', 'INDUSTRY', 3510),
       (351020, NULL, 'Медицинские поставщики и услуги', 'INDUSTRY', 3510),
       (351030, NULL, 'Медицинские технологии', 'INDUSTRY', 3510),
       (352010, NULL, 'Биотехнология', 'INDUSTRY', 3520),
       (352020, NULL, 'Фармацевтика', 'INDUSTRY', 3520),
       (352030, NULL, 'Инструменты и услуги наук о жизни', 'INDUSTRY', 3520),
       (401010, NULL, 'Банки', 'INDUSTRY', 4010);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (401020, NULL, 'Сберегательные и ипотечные финансы', 'INDUSTRY', 4010),
       (402010, NULL, 'Многоотраслевые финансовые услуги', 'INDUSTRY', 4020),
       (402020, NULL, 'Потребительские финансы', 'INDUSTRY', 4020),
       (402030, NULL, 'Рынки капитала', 'INDUSTRY', 4020),
       (402040, NULL, 'Инвестиционные трасты ипотечной недвижимости', 'INDUSTRY', 4020),
       (403010, NULL, 'Страхование', 'INDUSTRY', 4030),
       (451020, NULL, 'Информационно-технологические услуги', 'INDUSTRY', 4510),
       (451030, NULL, 'Программное обеспечение', 'INDUSTRY', 4510),
       (452010, NULL, 'Коммуникационное оборудование', 'INDUSTRY', 4520),
       (452020, NULL, 'Технологическое оборудование, хранение данных и периферия', 'INDUSTRY', 4520);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (452030, NULL, 'Электронное оборудование, инструменты и компоненты', 'INDUSTRY', 4520),
       (453010, NULL, 'Полупроводники и полупроводниковое оборудование', 'INDUSTRY', 4530),
       (501010, NULL, 'Многоотраслевые телекоммуникационные услуги', 'INDUSTRY', 5010),
       (501020, NULL, 'Беспроводные телекоммуникационные услуги', 'INDUSTRY', 5010),
       (502010, NULL, 'СМИ', 'INDUSTRY', 5020),
       (502020, NULL, 'Развлечения', 'INDUSTRY', 5020),
       (502030, NULL, 'Интерактивные медиа и услуги', 'INDUSTRY', 5020),
       (551010, NULL, 'Электрические коммунальные услуги', 'INDUSTRY', 5510),
       (551020, NULL, 'Газовые коммунальные услуги', 'INDUSTRY', 5510),
       (551030, NULL, 'Многоотраслевые коммунальные услуги', 'INDUSTRY', 5510);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (551040, NULL, 'Водоснабжение', 'INDUSTRY', 5510),
       (551050, NULL, 'Независимые производители электроэнергии и возобновляемой электроэнергии', 'INDUSTRY', 5510),
       (601010, NULL, 'Инвестиционные трасты недвижимости (ИТН)', 'INDUSTRY', 6010),
       (601020, NULL, 'Управление недвижимости и ее развитие', 'INDUSTRY', 6010),
       (10101010, NULL, 'Бурение нефтяных и газовых скважин', 'SUB_INDUSTRY', 101010),
       (10101020, NULL, 'Нефтегазовое оборудование и услуги', 'SUB_INDUSTRY', 101010),
       (10102010, NULL, 'Интегрированная нефть и газ', 'SUB_INDUSTRY', 101020),
       (10102020, NULL, 'Разведка и добыча нефти и газа', 'SUB_INDUSTRY', 101020),
       (10102030, NULL, 'Переработка и продажа нефти и газа', 'SUB_INDUSTRY', 101020),
       (10102040, NULL, 'Хранение и транспортировка нефти и газа', 'SUB_INDUSTRY', 101020);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (10102050, NULL, 'Уголь и горючее топливо', 'SUB_INDUSTRY', 101020),
       (15101010, NULL, 'Товарные химикаты', 'SUB_INDUSTRY', 151010),
       (15101020, NULL, 'Разнообразные химикаты', 'SUB_INDUSTRY', 151010),
       (15101030, NULL, 'Удобрения и сельскохозяйственные химикаты', 'SUB_INDUSTRY', 151010),
       (15101040, NULL, 'Промышленные газы', 'SUB_INDUSTRY', 151010),
       (15101050, NULL, 'Специализированные химикаты', 'SUB_INDUSTRY', 151010),
       (15102010, NULL, 'Строительные материалы', 'SUB_INDUSTRY', 151020),
       (15103010, NULL, 'Металлические и стеклянные контейнеры', 'SUB_INDUSTRY', 151030),
       (15103020, NULL, 'Бумажная упаковка', 'SUB_INDUSTRY', 151030),
       (15104010, NULL, 'Алюминий', 'SUB_INDUSTRY', 151040);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (15104020, NULL, 'Многоотраслевая металлургия и горнодобывающая промышленность', 'SUB_INDUSTRY', 151040),
       (15104025, NULL, 'Медь', 'SUB_INDUSTRY', 151040),
       (15104030, NULL, 'Золото', 'SUB_INDUSTRY', 151040),
       (15104040, NULL, 'Ценные металлы и минералы', 'SUB_INDUSTRY', 151040),
       (15104045, NULL, 'Серебро', 'SUB_INDUSTRY', 151040),
       (15104050, NULL, 'Сталь', 'SUB_INDUSTRY', 151040),
       (15105010, NULL, 'Лесная промышленность', 'SUB_INDUSTRY', 151050),
       (15105020, NULL, 'Бумажная промышленность', 'SUB_INDUSTRY', 151050),
       (20101010, NULL, 'Аэрокосмическое и оборонное производство', 'SUB_INDUSTRY', 201010),
       (20102010, NULL, 'Строительные товары', 'SUB_INDUSTRY', 201020);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (20103010, NULL, 'Строительство и инженерия', 'SUB_INDUSTRY', 201030),
       (20104010, NULL, 'Электрические компоненты и оборудование', 'SUB_INDUSTRY', 201040),
       (20104020, NULL, 'Высоковольтное электрооборудование', 'SUB_INDUSTRY', 201040),
       (20105010, NULL, 'Промышленные конгломераты', 'SUB_INDUSTRY', 201050),
       (20106010, NULL, 'Строительные машины и тяжелые грузовые машины', 'SUB_INDUSTRY', 201060),
       (20106015, NULL, 'Сельскохозяйственные машины', 'SUB_INDUSTRY', 201060),
       (20106020, NULL, 'Промышленные машины', 'SUB_INDUSTRY', 201060),
       (20107010, NULL, 'Торговые компании и дистрибьюторы', 'SUB_INDUSTRY', 201070),
       (20201010, NULL, 'Коммерческая печать (типографии)', 'SUB_INDUSTRY', 202010),
       (20201050, NULL, 'Окружающая среда и благоустройство', 'SUB_INDUSTRY', 202010);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (20201060, NULL, 'Офисные услуги и снабжение', 'SUB_INDUSTRY', 202010),
       (20201070, NULL, 'Многоотраслевые услуги поддержки', 'SUB_INDUSTRY', 202010),
       (20201080, NULL, 'Услуги охраны', 'SUB_INDUSTRY', 202010),
       (20202010, NULL, 'Кадровые услуги', 'SUB_INDUSTRY', 202020),
       (20202020, NULL, 'Исследования и консультирование', 'SUB_INDUSTRY', 202020),
       (20301010, NULL, 'Авиаперевозки и логистика', 'SUB_INDUSTRY', 203010),
       (20302010, NULL, 'Авиакомпании', 'SUB_INDUSTRY', 203020),
       (20303010, NULL, 'Морской транспорт', 'SUB_INDUSTRY', 203030),
       (20304010, NULL, 'Железнодорожный транспорт', 'SUB_INDUSTRY', 203040),
       (20304020, NULL, 'Автомобильный транспорт', 'SUB_INDUSTRY', 203040);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (20305010, NULL, 'Аэропорты и аэропортовые услуги', 'SUB_INDUSTRY', 203050),
       (20305020, NULL, 'Скоростные и железные дороги', 'SUB_INDUSTRY', 203050),
       (20305030, NULL, 'Порты и портовые услуги', 'SUB_INDUSTRY', 203050),
       (25101010, NULL, 'Автозапчасти и оборудование', 'SUB_INDUSTRY', 251010),
       (25101020, NULL, 'Покрышки и камеры', 'SUB_INDUSTRY', 251010),
       (25102010, NULL, 'Производство автомобилей', 'SUB_INDUSTRY', 251020),
       (25102020, NULL, 'Производство мотоциклов', 'SUB_INDUSTRY', 251020),
       (25201010, NULL, 'Потребительская электроника', 'SUB_INDUSTRY', 252010),
       (25201020, NULL, 'Мебель для дома', 'SUB_INDUSTRY', 252010),
       (25201030, NULL, 'Домостроение', 'SUB_INDUSTRY', 252010);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (25201040, NULL, 'Бытовая техника', 'SUB_INDUSTRY', 252010),
       (25201050, NULL, 'Домашняя утварь', 'SUB_INDUSTRY', 252010),
       (25202010, NULL, 'Товары для отдыха', 'SUB_INDUSTRY', 252020),
       (25203010, NULL, 'Одежда, аксессуары и предметы роскоши', 'SUB_INDUSTRY', 252030),
       (25203020, NULL, 'Обувь', 'SUB_INDUSTRY', 252030),
       (25203030, NULL, 'Текстиль', 'SUB_INDUSTRY', 252030),
       (25301010, NULL, 'Казино и игры', 'SUB_INDUSTRY', 253010),
       (25301020, NULL, 'Отели, курорты и круизные линии', 'SUB_INDUSTRY', 253010),
       (25301030, NULL, 'Предприятия досуга', 'SUB_INDUSTRY', 253010),
       (25301040, NULL, 'Рестораны', 'SUB_INDUSTRY', 253010);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (25302010, NULL, 'Образование', 'SUB_INDUSTRY', 253020),
       (25302020, NULL, 'Специализированные потребительские услуги', 'SUB_INDUSTRY', 253020),
       (25501010, NULL, 'Дистрибьюторы', 'SUB_INDUSTRY', 255010),
       (25502020, NULL, 'Розничный прямой и Интернет маркетинг', 'SUB_INDUSTRY', 255020),
       (25503010, NULL, 'Универмаги', 'SUB_INDUSTRY', 255030),
       (25503020, NULL, 'Магазины товаров повседневного спроса', 'SUB_INDUSTRY', 255030),
       (25504010, NULL, 'Магазины одежды', 'SUB_INDUSTRY', 255040),
       (25504020, NULL, 'Магазины компьютеров и электроники', 'SUB_INDUSTRY', 255040),
       (25504030, NULL, 'Магазины товаров для дома', 'SUB_INDUSTRY', 255040),
       (25504040, NULL, 'Специализированные магазины', 'SUB_INDUSTRY', 255040);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (25504050, NULL, 'Автосалоны', 'SUB_INDUSTRY', 255040),
       (25504060, NULL, 'Мебельные магазины', 'SUB_INDUSTRY', 255040),
       (30101010, NULL, 'Аптеки', 'SUB_INDUSTRY', 301010),
       (30101020, NULL, 'Дитрибьюторы продуктов питания', 'SUB_INDUSTRY', 301010),
       (30101030, NULL, 'Продуктовые магазины', 'SUB_INDUSTRY', 301010),
       (30101040, NULL, 'Гипермакеты и супермаркеты', 'SUB_INDUSTRY', 301010),
       (30201010, NULL, 'Пивоварни', 'SUB_INDUSTRY', 302010),
       (30201020, NULL, 'Производство крепких напитков и вин', 'SUB_INDUSTRY', 302010),
       (30201030, NULL, 'Безалкогольные напитки', 'SUB_INDUSTRY', 302010),
       (30202010, NULL, 'Сельскохозяйственная продукция', 'SUB_INDUSTRY', 302020);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (30202030, NULL, 'Упакованная пища и мясо', 'SUB_INDUSTRY', 302020),
       (30203010, NULL, 'Табачные изделия', 'SUB_INDUSTRY', 302030),
       (30301010, NULL, 'Бытовые изделия', 'SUB_INDUSTRY', 303010),
       (30302010, NULL, 'Предметы личного пользования', 'SUB_INDUSTRY', 303020),
       (35101010, NULL, 'Медицинское оборудование', 'SUB_INDUSTRY', 351010),
       (35101020, NULL, 'Медицинское снабжение', 'SUB_INDUSTRY', 351010),
       (35102010, NULL, 'Медицинские дистрибьюторы', 'SUB_INDUSTRY', 351020),
       (35102015, NULL, 'Медицинские услуги', 'SUB_INDUSTRY', 351020),
       (35102020, NULL, 'Медицинские учреждения', 'SUB_INDUSTRY', 351020),
       (35102030, NULL, 'Управление медицинскими расходами', 'SUB_INDUSTRY', 351020);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (35103010, NULL, 'Медицинские технологии', 'SUB_INDUSTRY', 351030),
       (35201010, NULL, 'Биотехнология', 'SUB_INDUSTRY', 352010),
       (35202010, NULL, 'Фармацевтика', 'SUB_INDUSTRY', 352020),
       (35203010, NULL, 'Инструменты и услуги наук о жизни', 'SUB_INDUSTRY', 352030),
       (40101010, NULL, 'Многоотраслевые банки', 'SUB_INDUSTRY', 401010),
       (40101015, NULL, 'Региональные банки', 'SUB_INDUSTRY', 401010),
       (40102010, NULL, 'Сберегательные и ипотечные финансы', 'SUB_INDUSTRY', 401020),
       (40201020, NULL, 'Прочие межотраслевые финансовые услуги', 'SUB_INDUSTRY', 402010),
       (40201030, NULL, 'Мультисекторные холдинги', 'SUB_INDUSTRY', 402010),
       (40201040, NULL, 'Специализированные финансовые услуги', 'SUB_INDUSTRY', 402010);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (40202010, NULL, 'Потребительские финансы', 'SUB_INDUSTRY', 402020),
       (40203010, NULL, 'Управление активами и депозитарии', 'SUB_INDUSTRY', 402030),
       (40203020, NULL, 'Инвестиционные банки и брокеры', 'SUB_INDUSTRY', 402030),
       (40203030, NULL, 'Глобальные рынки капитала', 'SUB_INDUSTRY', 402030),
       (40203040, NULL, 'Биржи и финансовые данные', 'SUB_INDUSTRY', 402030),
       (40204010, NULL, 'Инвестиционные трасты ипотечной недвижимости', 'SUB_INDUSTRY', 402040),
       (40301010, NULL, 'Страховые брокеры', 'SUB_INDUSTRY', 403010),
       (40301020, NULL, 'Страхование жизни и здоровья', 'SUB_INDUSTRY', 403010),
       (40301030, NULL, 'Многопрофильное страхование', 'SUB_INDUSTRY', 403010),
       (40301040, NULL, 'Страхование имущества и страхование от непредвиденных случаев', 'SUB_INDUSTRY', 403010);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (40301050, NULL, 'Вторичное страхование', 'SUB_INDUSTRY', 403010),
       (45102010, NULL, 'ИТ-консалтинг и прочие ИТ-услуги', 'SUB_INDUSTRY', 451020),
       (45102020, NULL, 'Обработка данных и внешние услуги', 'SUB_INDUSTRY', 451020),
       (45102030, NULL, 'Услуги и инфраструктура Интернета', 'SUB_INDUSTRY', 451020),
       (45103010, NULL, 'Прикладное программное обеспечение', 'SUB_INDUSTRY', 451030),
       (45103020, NULL, 'Системное программное обеспечение', 'SUB_INDUSTRY', 451030),
       (45201020, NULL, 'Коммуникационное оборудование', 'SUB_INDUSTRY', 452010),
       (45202030, NULL, 'Технологическое оборудование, хранение данных и периферия', 'SUB_INDUSTRY', 452020),
       (45203010, NULL, 'Электронное оборудование и инструменты', 'SUB_INDUSTRY', 452030),
       (45203015, NULL, 'Электронные компоненты', 'SUB_INDUSTRY', 452030);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (45203020, NULL, 'Услуги по производству электроники', 'SUB_INDUSTRY', 452030),
       (45203030, NULL, 'Дистрибьюторы технологий', 'SUB_INDUSTRY', 452030),
       (45301010, NULL, 'Полупроводниковое оборудование', 'SUB_INDUSTRY', 453010),
       (45301020, NULL, 'Полупроводники', 'SUB_INDUSTRY', 453010),
       (50101010, NULL, 'Альтернативные операторы связи', 'SUB_INDUSTRY', 501010),
       (50101020, NULL, 'Интегрированные телекоммуникационные услуги', 'SUB_INDUSTRY', 501010),
       (50102010, NULL, 'Беспроводные телекоммуникационные услуги', 'SUB_INDUSTRY', 501020),
       (50201010, NULL, 'Реклама', 'SUB_INDUSTRY', 502010),
       (50201020, NULL, 'Вещание', 'SUB_INDUSTRY', 502010),
       (50201030, NULL, 'Кабельная и спутниковая связь', 'SUB_INDUSTRY', 502010);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (50201040, NULL, 'Издательское дело', 'SUB_INDUSTRY', 502010),
       (50202010, NULL, 'Фильмы и развлечения', 'SUB_INDUSTRY', 502020),
       (50202020, NULL, 'Интерактивные домашние развлечения', 'SUB_INDUSTRY', 502020),
       (50203010, NULL, 'Интерактивные медиа и услуги', 'SUB_INDUSTRY', 502030),
       (55101010, NULL, 'Электрические коммунальные услуги', 'SUB_INDUSTRY', 551010),
       (55102010, NULL, 'Газовые коммунальные услуги', 'SUB_INDUSTRY', 551020),
       (55103010, NULL, 'Многоотраслевые коммунальные услуги', 'SUB_INDUSTRY', 551030),
       (55104010, NULL, 'Водоснабжение', 'SUB_INDUSTRY', 551040),
       (55105010, NULL, 'Независимые производители электроэнергии и продавцы электроэнергии', 'SUB_INDUSTRY', 551050),
       (55105020, NULL, 'Производители возобновляемой электроэнергии', 'SUB_INDUSTRY', 551050);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (60101010, NULL, 'Диверсифицированные', 'SUB_INDUSTRY', 601010),
       (60101020, NULL, 'Промышленные', 'SUB_INDUSTRY', 601010),
       (60101030, NULL, 'Отели и курорты', 'SUB_INDUSTRY', 601010),
       (60101040, NULL, 'Офисные', 'SUB_INDUSTRY', 601010),
       (60101050, NULL, 'Санатории', 'SUB_INDUSTRY', 601010),
       (60101060, NULL, 'Жилые', 'SUB_INDUSTRY', 601010),
       (60101070, NULL, 'Розничная торговля', 'SUB_INDUSTRY', 601010),
       (60101080, NULL, 'Специализированные', 'SUB_INDUSTRY', 601010),
       (60102010, NULL, 'Межотраслевая деятельность в сфере недвижимости', 'SUB_INDUSTRY', 601020),
       (60102020, NULL, 'Управляющие компании', 'SUB_INDUSTRY', 601020);
INSERT INTO investing.sector (id, business_cycle_sensitivity, "name", sector_level, parent_id)
VALUES (60102030, NULL, 'Развитие недвижимости', 'SUB_INDUSTRY', 601020),
       (60102040, NULL, 'Услуги в сфере недвижимости', 'SUB_INDUSTRY', 601020);
-- Валюты
insert into investing.currency_register (id, designation, name)
values (1, 'JMD', 'Ямайский доллар');
insert into investing.currency_register (id, designation, name)
values (2, 'PGK', 'Кина Папуа – Новой Гвинеи');
insert into investing.currency_register (id, designation, name)
values (3, 'MOP', 'Патака Макао');
insert into investing.currency_register (id, designation, name)
values (4, 'COP', 'Колумбийское песо');
insert into investing.currency_register (id, designation, name)
values (5, 'UAH', 'Украинская гривна');
insert into investing.currency_register (id, designation, name)
values (6, 'MYR', 'Малайзийский ринггит');
insert into investing.currency_register (id, designation, name)
values (7, 'LKR', 'Шри-ланкийская рупия');
insert into investing.currency_register (id, designation, name)
values (8, 'HKD', 'Гонконгский доллар');
insert into investing.currency_register (id, designation, name)
values (9, 'PLN', 'Польский злотый');
insert into investing.currency_register (id, designation, name)
values (10, 'PHP', 'Филиппинское песо');
insert into investing.currency_register (id, designation, name)
values (11, 'IDR', 'Индонезийская рупия');
insert into investing.currency_register (id, designation, name)
values (12, 'CAD', 'Канадский доллар');
insert into investing.currency_register (id, designation, name)
values (13, 'TRY', 'Турецкая лира');
insert into investing.currency_register (id, designation, name)
values (14, 'GBP', 'Британский фунт стерлингов');
insert into investing.currency_register (id, designation, name)
values (15, 'GYD', 'Гайанский доллар');
insert into investing.currency_register (id, designation, name)
values (16, 'BSD', 'Багамский доллар');
insert into investing.currency_register (id, designation, name)
values (17, 'CHF', 'Швейцарский франк');
insert into investing.currency_register (id, designation, name)
values (18, 'SLL', 'Леоне');
insert into investing.currency_register (id, designation, name)
values (19, 'DZD', 'Алжирский динар');
insert into investing.currency_register (id, designation, name)
values (20, 'UYU', 'Уругвайское песо');
insert into investing.currency_register (id, designation, name)
values (21, 'SEK', 'Шведская крона');
insert into investing.currency_register (id, designation, name)
values (22, 'HRK', 'Хорватская куна');
insert into investing.currency_register (id, designation, name)
values (23, 'BAM', 'Конвертируемая марка Боснии и Герцеговины');
insert into investing.currency_register (id, designation, name)
values (24, 'INR', 'Индийская рупия');
insert into investing.currency_register (id, designation, name)
values (25, 'SOS', 'Сомалийский шиллинг');
insert into investing.currency_register (id, designation, name)
values (26, 'KYD', 'Доллар Каймановых островов');
insert into investing.currency_register (id, designation, name)
values (27, 'SBD', 'Доллар Соломоновых Островов');
insert into investing.currency_register (id, designation, name)
values (28, 'BTN', 'Бутанский нгултрум');
insert into investing.currency_register (id, designation, name)
values (29, 'ZAR', 'Южноафриканский рэнд');
insert into investing.currency_register (id, designation, name)
values (30, 'EUR', 'Евро');
insert into investing.currency_register (id, designation, name)
values (31, 'KGS', 'Киргизский сом');
insert into investing.currency_register (id, designation, name)
values (32, 'DKK', 'Датская крона');
insert into investing.currency_register (id, designation, name)
values (33, 'LBP', 'Ливанский фунт');
insert into investing.currency_register (id, designation, name)
values (34, 'PEN', 'Перуанский соль');
insert into investing.currency_register (id, designation, name)
values (35, 'XPF', 'Французский тихоокеанский франк');
insert into investing.currency_register (id, designation, name)
values (36, 'SCR', 'Сейшельская рупия');
insert into investing.currency_register (id, designation, name)
values (37, 'DOP', 'Доминиканское песо');
insert into investing.currency_register (id, designation, name)
values (38, 'MXN', 'Мексиканское песо');
insert into investing.currency_register (id, designation, name)
values (39, 'MWK', 'Малавийская квача');
insert into investing.currency_register (id, designation, name)
values (40, 'SGD', 'Сингапурский доллар');
insert into investing.currency_register (id, designation, name)
values (41, 'SDG', 'Суданский фунт');
insert into investing.currency_register (id, designation, name)
values (42, 'GEL', 'Грузинский лари');
insert into investing.currency_register (id, designation, name)
values (43, 'XOF', 'Франк КФА ВСЕАО');
insert into investing.currency_register (id, designation, name)
values (44, 'CRC', 'Костариканский колон');
insert into investing.currency_register (id, designation, name)
values (45, 'GIP', 'Гибралтарский фунт');
insert into investing.currency_register (id, designation, name)
values (46, 'ETB', 'Эфиопский быр');
insert into investing.currency_register (id, designation, name)
values (47, 'BGN', 'Болгарский лев');
insert into investing.currency_register (id, designation, name)
values (48, 'TZS', 'Танзанийский шиллинг');
insert into investing.currency_register (id, designation, name)
values (49, 'AFN', 'Афгани');
insert into investing.currency_register (id, designation, name)
values (50, 'ISK', 'Исландская крона');
insert into investing.currency_register (id, designation, name)
values (51, 'OMR', 'Оманский риал');
insert into investing.currency_register (id, designation, name)
values (52, 'TWD', 'Новый тайваньский доллар');
insert into investing.currency_register (id, designation, name)
values (53, 'DJF', 'Франк Джибути');
insert into investing.currency_register (id, designation, name)
values (54, 'GTQ', 'Гватемальский кетсаль');
insert into investing.currency_register (id, designation, name)
values (55, 'QAR', 'Катарский риал');
insert into investing.currency_register (id, designation, name)
values (56, 'STD', 'Добра Сан-Томе и Принсипи');
insert into investing.currency_register (id, designation, name)
values (57, 'HNL', 'Гондурасская лемпира');
insert into investing.currency_register (id, designation, name)
values (58, 'SYP', 'Сирийский фунт');
insert into investing.currency_register (id, designation, name)
values (59, 'CUP', 'Кубинское песо');
insert into investing.currency_register (id, designation, name)
values (60, 'AMD', 'Армянский драм');
insert into investing.currency_register (id, designation, name)
values (61, 'LSL', 'Лоти');
insert into investing.currency_register (id, designation, name)
values (62, 'BOB', 'Боливийский боливиано');
insert into investing.currency_register (id, designation, name)
values (63, 'NPR', 'Непальская рупия');
insert into investing.currency_register (id, designation, name)
values (64, 'LTL', 'Литовский лит');
insert into investing.currency_register (id, designation, name)
values (65, 'SRD', 'Суринамский доллар');
insert into investing.currency_register (id, designation, name)
values (66, 'XAF', 'Франк КФА ВЕАС');
insert into investing.currency_register (id, designation, name)
values (67, 'NOK', 'Норвежская крона');
insert into investing.currency_register (id, designation, name)
values (68, 'RON', 'Румынский лей');
insert into investing.currency_register (id, designation, name)
values (69, 'ERN', 'Накфа');
insert into investing.currency_register (id, designation, name)
values (70, 'PAB', 'Панамское бальбоа');
insert into investing.currency_register (id, designation, name)
values (71, 'YER', 'Йеменский риал');
insert into investing.currency_register (id, designation, name)
values (72, 'CDF', 'Конголезский франк');
insert into investing.currency_register (id, designation, name)
values (73, 'KWD', 'Кувейтский динар');
insert into investing.currency_register (id, designation, name)
values (74, 'MGA', 'Малагасийский ариари');
insert into investing.currency_register (id, designation, name)
values (75, 'SHP', 'Фунт острова Святой Елены');
insert into investing.currency_register (id, designation, name)
values (76, 'MKD', 'Македонский денар');
insert into investing.currency_register (id, designation, name)
values (77, 'BYN', 'Белорусский рубль');
insert into investing.currency_register (id, designation, name)
values (78, 'RSD', 'Сербский динар');
insert into investing.currency_register (id, designation, name)
values (79, 'SAR', 'Саудовский риял');
insert into investing.currency_register (id, designation, name)
values (80, 'KRW', 'Южнокорейская вона');
insert into investing.currency_register (id, designation, name)
values (81, 'LYD', 'Ливийский динар');
insert into investing.currency_register (id, designation, name)
values (82, 'GQE', 'Эквеле экваториальной Гвинеи');
insert into investing.currency_register (id, designation, name)
values (83, 'KMF', 'Франк Коморских Островов');
insert into investing.currency_register (id, designation, name)
values (84, 'KES', 'Кенийский шиллинг');
insert into investing.currency_register (id, designation, name)
values (85, 'SZL', 'Свазилендский лилангени');
insert into investing.currency_register (id, designation, name)
values (86, 'BHD', 'Бахрейнский динар');
insert into investing.currency_register (id, designation, name)
values (87, 'MMK', 'Мьянманский кьят');
insert into investing.currency_register (id, designation, name)
values (88, 'MRO', 'Мавританская угия');
insert into investing.currency_register (id, designation, name)
values (89, 'NAD', 'Доллар Намибии');
insert into investing.currency_register (id, designation, name)
values (90, 'BBD', 'Барбадосский доллар');
insert into investing.currency_register (id, designation, name)
values (91, 'AED', 'Дирхам ОАЭ');
insert into investing.currency_register (id, designation, name)
values (92, 'LAK', 'Лаосский кип');
insert into investing.currency_register (id, designation, name)
values (93, 'IRR', 'Иранский риал');
insert into investing.currency_register (id, designation, name)
values (94, 'PYG', 'Парагвайский гуарани');
insert into investing.currency_register (id, designation, name)
values (95, 'BND', 'Брунейский доллар');
insert into investing.currency_register (id, designation, name)
values (96, 'XCD', 'Восточно-карибский доллар');
insert into investing.currency_register (id, designation, name)
values (97, 'MNT', 'Монгольский тугрик');
insert into investing.currency_register (id, designation, name)
values (98, 'BZD', 'Белизский доллар');
insert into investing.currency_register (id, designation, name)
values (99, 'NIO', 'Никарагуанская кордоба');
insert into investing.currency_register (id, designation, name)
values (100, 'MUR', 'Маврикийская рупия');
insert into investing.currency_register (id, designation, name)
values (101, 'KHR', 'Камбоджийский риель');
insert into investing.currency_register (id, designation, name)
values (102, 'UZS', 'Узбекский сум');
insert into investing.currency_register (id, designation, name)
values (103, 'TJS', 'Таджикский сомони');
insert into investing.currency_register (id, designation, name)
values (104, 'MDL', 'Молдавский лей');
insert into investing.currency_register (id, designation, name)
values (105, 'HTG', 'Гаитянский гурд');
insert into investing.currency_register (id, designation, name)
values (106, 'JPY', 'Японская иена');
insert into investing.currency_register (id, designation, name)
values (107, 'BIF', 'Бурундийский франк');
insert into investing.currency_register (id, designation, name)
values (108, 'FJD', 'Доллар Фиджи');
insert into investing.currency_register (id, designation, name)
values (109, 'KZT', 'Казахский тенге');
insert into investing.currency_register (id, designation, name)
values (110, 'EGP', 'Египетский фунт');
insert into investing.currency_register (id, designation, name)
values (111, 'AUD', 'Австралийский доллар');
insert into investing.currency_register (id, designation, name)
values (112, 'CNY', 'Китайский юань');
insert into investing.currency_register (id, designation, name)
values (113, 'ARS', 'Аргентинское песо');
insert into investing.currency_register (id, designation, name)
values (114, 'MZM', 'Старый мозамбикский метикал');
insert into investing.currency_register (id, designation, name)
values (115, 'ILS', 'Новый израильский шекель');
insert into investing.currency_register (id, designation, name)
values (116, 'CZK', 'Чешская крона');
insert into investing.currency_register (id, designation, name)
values (117, 'MVR', 'Мальдивская руфия');
insert into investing.currency_register (id, designation, name)
values (118, 'ZMK', 'Квача (замбийская) (1968–2012)');
insert into investing.currency_register (id, designation, name)
values (119, 'LVL', 'Латвийский лат');
insert into investing.currency_register (id, designation, name)
values (120, 'GMD', 'Гамбийский даласи');
insert into investing.currency_register (id, designation, name)
values (121, 'GHS', 'Ганский седи');
insert into investing.currency_register (id, designation, name)
values (122, 'TMM', 'Туркменский манат');
insert into investing.currency_register (id, designation, name)
values (123, 'USD', 'Доллар США');
insert into investing.currency_register (id, designation, name)
values (124, 'JOD', 'Иорданский динар');
insert into investing.currency_register (id, designation, name)
values (125, 'THB', 'Таиландский бат');
insert into investing.currency_register (id, designation, name)
values (126, 'LRD', 'Либерийский доллар');
insert into investing.currency_register (id, designation, name)
values (127, 'KPW', 'Северокорейская вона');
insert into investing.currency_register (id, designation, name)
values (128, 'EEK', 'Эстонская крона');
insert into investing.currency_register (id, designation, name)
values (129, 'TTD', 'Доллар Тринидада и Тобаго');
insert into investing.currency_register (id, designation, name)
values (130, 'ALL', 'Албанский лек');
insert into investing.currency_register (id, designation, name)
values (131, 'PKR', 'Пакистанская рупия');
insert into investing.currency_register (id, designation, name)
values (132, 'TND', 'Тунисский динар');
insert into investing.currency_register (id, designation, name)
values (133, 'HUF', 'Венгерский форинт');
insert into investing.currency_register (id, designation, name)
values (134, 'AWG', 'Арубанский флорин');
insert into investing.currency_register (id, designation, name)
values (135, 'RUB', 'Российский рубль');
insert into investing.currency_register (id, designation, name)
values (136, 'CLP', 'Чилийское песо');
insert into investing.currency_register (id, designation, name)
values (137, 'VND', 'Вьетнамский донг');
insert into investing.currency_register (id, designation, name)
values (138, 'VEB', 'Венесуэльский боливар (1871–2008)');
insert into investing.currency_register (id, designation, name)
values (139, 'TOP', 'Тонганская паанга');
insert into investing.currency_register (id, designation, name)
values (140, 'BWP', 'Ботсванская пула');
insert into investing.currency_register (id, designation, name)
values (141, 'MAD', 'Марокканский дирхам');
insert into investing.currency_register (id, designation, name)
values (142, 'GNF', 'Гвинейский франк');
insert into investing.currency_register (id, designation, name)
values (143, 'IQD', 'Иракский динар');
insert into investing.currency_register (id, designation, name)
values (144, 'AZN', 'Азербайджанский манат');
insert into investing.currency_register (id, designation, name)
values (145, 'AOA', 'Ангольская кванза');
insert into investing.currency_register (id, designation, name)
values (146, 'NZD', 'Новозеландский доллар');
insert into investing.currency_register (id, designation, name)
values (147, 'WST', 'Самоанская тала');
insert into investing.currency_register (id, designation, name)
values (148, 'BDT', 'Бангладешская така');
insert into investing.currency_register (id, designation, name)
values (149, 'NGN', 'Нигерийская найра');
insert into investing.currency_register (id, designation, name)
values (150, 'VUV', 'Вату Вануату');
insert into investing.currency_register (id, designation, name)
values (151, 'UGX', 'Угандийский шиллинг');
insert into investing.currency_register (id, designation, name)
values (152, 'RWF', 'Франк Руанды');
insert into investing.currency_register (id, designation, name)
values (153, 'BRL', 'Бразильский реал');

-- Ценные бумаги московской биржи
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3,'RU000A101TK1','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(4,'RU000A101Z74','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(5,'RU000A102DB2','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(6,'RU000A102GJ8','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(7,'RU000A102LU5','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(8,NULL,'"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(9,NULL,'"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(10,'RU000A0JUG31','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',8,135,NULL,NULL),
(11,'RU000A100WC4','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(12,'RU000A1014H6','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(13,NULL,'"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(14,NULL,'"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(15,NULL,'"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(16,NULL,'"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(17,'US29760G1031','ETALON GROUP PLC (ЭТАЛОН ГРУП ПИЭЛСИ) (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(18,'US33835G2057','Fix Price Group Ltd (Фикс Прайс Груп Лтд) (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(19,'US37949E2046','Globaltrans Investment PLC (Глобалтранс Инвестмент ПЛС) (эмитент депозитарных расписок - Citibank N.A. (Ситибэнк Эн.Эй))',12,NULL,NULL,NULL),
(20,'US42207L1061','HeadHunter Group PLC (ХэдХантер Групп ПИЭЛСИ) (эмитент депозитарных расписок - JPMorgan Chase Bank, N.A. (ДжиПиМорган Чейз Банк, Эн.Эй))',12,NULL,NULL,NULL),
(21,'US55279C2008','MD MEDICAL GROUP INVESTMENTS PLC (МД МЕДИКАЛ ГРУП ИНВЕСТМЕНТС ПЛС) (эмитент депозитарных расписок - JPMorgan Chase Bank, N.A. (ДжиПиМорган Чейз Банк, Эн.Эй))',12,NULL,NULL,NULL),
(22,'US5603172082','Mail.ru Group Limited (Мэйл.ру Груп Лимитед) (эмитент депозитарных расписок - Citibank N.A. (Ситибэнк Эн.Эй))',12,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(23,'GB0031544546','Petropavlovsk PLC (Петропавловск ПЛК)',9,14,NULL,NULL),
(24,'US87238U2033','TCS Group Holding PLC (ТиСиЭс Груп Холдинг ПиЭлСи) (эмитент депозитарных расписок - JPMorgan Chase Bank, N.A. (ДжиПиМорган Чейз Банк, Эн.Эй))',12,NULL,NULL,NULL),
(25,'RU000A101QP6','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(26,'RU000A102788','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(27,'RU000A102A07','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(28,'RU000A102JZ8','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(29,'RU000A102S80','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(30,'RU000A0ZZEW4','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(31,'RU000A0ZZRB0','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(32,'RU000A0ZZZ66','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(33,'RU000A100998','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(34,'RU000A100PQ8','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(35,'US6708662019','АО О''КЕЙ ГРУПП (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(36,'RU000A0ZYCD1','Администрация Курской области',21,135,NULL,NULL),
(37,'RU000A0ZYF61','Администрация Ненецкого автономного округа',21,135,NULL,NULL),
(38,'RU000A1029G6','Администрация города Красноярска',24,135,NULL,NULL),
(39,'RU000A0ZYJ00','Администрация города Нижнего Новгорода',24,135,NULL,NULL),
(40,'RU000A102KT9','Администрация муниципального образования город Краснодар',24,135,NULL,NULL),
(41,'RU0007252813','Акционерная компания "АЛРОСА" (публичное акционерное общество)',8,135,NULL,NULL),
(42,'RU000A101PG7','Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(43,'RU000A101PF9','Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL),
(44,'RU000A101PD4','Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL),
(45,'RU000A101PB8','Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL),
(46,'RU000A0ZYR18','Акционерное общество "Башкирская содовая компания"',20,135,NULL,NULL),
(47,'RU000A101UR4','Акционерное общество "Башкирская содовая компания"',20,135,NULL,NULL),
(48,'RU000A0JRJC6','Акционерное общество "Волга-Спорт"',22,135,NULL,NULL),
(49,'RU000A0JT593','Акционерное общество "Волга-Спорт"',22,135,NULL,NULL),
(50,'RU000A1025H2','Акционерное общество "Всероссийский банк развития регионов"',20,135,NULL,NULL),
(51,'RU000A0ZYQX9','Акционерное общество "Всероссийский банк развития регионов"',20,135,NULL,NULL),
(52,'RU000A1009E3','Акционерное общество "Газпромбанк - Управление активами"',14,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(53,'RU000A1009F0','Акционерное общество "Газпромбанк - Управление активами"',14,NULL,NULL,NULL),
(54,'RU000A0JQAL8','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(55,'RU000A0JQAM6','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(56,'RU000A0JQXG0','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(57,'RU000A0JR5F7','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(58,'RU000A0JRDY3','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(59,'RU000A0JTDX1','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(60,'RU000A0JTW83','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(61,'RU000A0JV4R9','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(62,'RU000A0ZZ1N0','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(63,'RU000A0ZZ7C0','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(64,'RU000A1004W6','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(65,'RU000A100ET6','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(66,'RU000A101590','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(67,'RU000A101SQ0','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(68,'RU000A0JRJB8','Акционерное общество "Западный скоростной диаметр"',22,135,NULL,NULL),
(69,'RU000A0JRJL7','Акционерное общество "Западный скоростной диаметр"',22,135,NULL,NULL),
(70,'RU000A0JS4J1','Акционерное общество "Западный скоростной диаметр"',22,135,NULL,NULL),
(71,'RU000A0JS4K9','Акционерное общество "Западный скоростной диаметр"',22,135,NULL,NULL),
(72,'RU000A0JS4L7','Акционерное общество "Западный скоростной диаметр"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(73,'RU000A100X77','Акционерное общество "Кредит Европа Банк (Россия)"',20,135,NULL,NULL),
(74,'RU000A102RU2','Акционерное общество "Лизинговая компания "Европлан"',20,135,NULL,NULL),
(75,'RU000A100W60','Акционерное общество "Лизинговая компания "Европлан"',20,135,NULL,NULL),
(76,'RU000A1004K1','Акционерное общество "Лизинговая компания "Европлан"',20,135,NULL,NULL),
(77,'RU000A100DG5','Акционерное общество "Лизинговая компания "Европлан"',20,135,NULL,NULL),
(78,'RU000A0JWVL2','Акционерное общество "Лизинговая компания "Европлан"',20,135,NULL,NULL),
(79,'RU000A0ZZBV2','Акционерное общество "Лизинговая компания "Европлан"',20,135,NULL,NULL),
(80,'RU000A101XD8','Акционерное общество "МаксимаТелеком"',20,135,NULL,NULL),
(81,'RU000A102DK3','Акционерное общество "МаксимаТелеком"',20,135,NULL,NULL),
(82,'RU000A0ZYTZ8','Акционерное общество "Новая перевозочная компания"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(83,'RU000A1004A2','Акционерное общество "Новая перевозочная компания"',20,135,NULL,NULL),
(84,'RU000A0JT874','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(85,'RU000A0JU1Q8','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(86,'RU000A0JUAD7','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(87,'RU000A0ZZH92','Акционерное общество "Сбер Управление Активами"',14,NULL,NULL,NULL),
(88,'RU000A1000F9','Акционерное общество "Сбер Управление Активами"',14,NULL,NULL,NULL),
(89,'RU000A1000Q6','Акционерное общество "Сбер Управление Активами"',14,NULL,NULL,NULL),
(90,'RU000A100P44','Акционерное общество "Сбер Управление Активами"',14,NULL,NULL,NULL),
(91,'RU000A1024P8','Акционерное общество "Сбер Управление Активами"',14,NULL,NULL,NULL),
(92,'RU000A0JXQ85','Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(93,'RU000A1008B1','Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(94,'RU000A100V79','Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(95,'RU000A0JWM31','Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(96,'RU000A1020A8','Акционерное общество "Управляющая компания "МКБ Инвестиции"',14,NULL,NULL,NULL),
(97,'RU000A0JWLG3','Акционерное общество "Эталон ЛенСпецСМУ"',20,135,NULL,NULL),
(98,'RU000A0ZYA66','Акционерное общество "Эталон ЛенСпецСМУ"',20,135,NULL,NULL),
(99,'RU000A1002S8','Акционерное общество ВТБ Капитал Управление активами',14,NULL,NULL,NULL),
(100,'RU000A100E21','Акционерное общество ВТБ Капитал Управление активами',14,NULL,NULL,NULL),
(101,'RU000A100HP7','Акционерное общество ВТБ Капитал Управление активами',14,NULL,NULL,NULL),
(102,'RU000A100HQ5','Акционерное общество ВТБ Капитал Управление активами',14,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(103,'RU000A101368','Акционерное общество ВТБ Капитал Управление активами',14,NULL,NULL,NULL),
(104,'RU000A1014L8','Акционерное общество ВТБ Капитал Управление активами',14,NULL,NULL,NULL),
(105,'RU000A101EJ5','Акционерное общество ВТБ Капитал Управление активами',14,NULL,NULL,NULL),
(106,'RU000A101NZ2','Акционерное общество ВТБ Капитал Управление активами',14,NULL,NULL,NULL),
(107,'RU000A1024J1','Акционерное общество ВТБ Капитал Управление активами',14,NULL,NULL,NULL),
(108,'RU000A102ST2','Акционерное общество Управляющая компания "Брокеркредитсервис"',14,NULL,NULL,NULL),
(109,'RU000A0JP5V6','Банк ВТБ (публичное акционерное общество)',8,135,NULL,NULL),
(110,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(111,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(112,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(113,'RU000A102SZ9','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(114,'RU000A102XD6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(115,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(116,'RU000A102XJ3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(117,'RU000A102Y41','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(118,'RU000A102YB8','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(119,'RU000A102YF9','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(120,'RU000A102Z16','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(121,'RU000A102ZG4','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(122,'RU000A102ZM2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(123,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(124,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(125,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(126,'RU000A101M53','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(127,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(128,'RU000A101Q67','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(129,'RU000A101U46','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(130,'RU000A101YR6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(131,'RU000A1022J5','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(132,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(133,'RU000A0ZZH84','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(134,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(135,'RU000A100071','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(136,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(137,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(138,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(139,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(140,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(141,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(142,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(143,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(144,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(145,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(146,'RU000A0JV3Q3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(147,'RU000A102LV3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(148,'RU000A102PB6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(149,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(150,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(151,'RU000A0JU773','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(152,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(153,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(154,'LU1483649825','Биржевые индексные фонды АйТиАй Фандс (Юситс, Сикав)',11,NULL,NULL,NULL),
(155,'LU1483649312','Биржевые индексные фонды АйТиАй Фандс (Юситс, Сикав)',11,NULL,NULL,NULL),
(156,'RU000A0JW1K9','Департамент финансов Томской области',21,135,NULL,NULL),
(157,'RU000A0ZYMJ7','Департамент финансов Томской области',21,135,NULL,NULL),
(158,'RU000A1024L7','Департамент финансов Томской области',21,135,NULL,NULL),
(159,'RU000A0JWHN7','Департамент финансов Ярославской области',21,135,NULL,NULL),
(160,'RU000A0JXS83','Департамент финансов Ярославской области',21,135,NULL,NULL),
(161,'RU000A0ZZEM5','Департамент финансов Ярославской области',21,135,NULL,NULL),
(162,'RU000A100PR6','Департамент финансов Ярославской области',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(163,'RU000A101WD0','Департамент финансов Ярославской области',21,135,NULL,NULL),
(164,'RU000A101PK9','Евразийский банк развития',19,135,NULL,NULL),
(165,'RU000A0JS918','Евразийский банк развития',19,135,NULL,NULL),
(166,'RU000A0JS926','Евразийский банк развития',19,135,NULL,NULL),
(167,'RU000A0JS934','Евразийский банк развития',19,135,NULL,NULL),
(168,'RU000A0ZZDB0','Евразийский банк развития',20,135,NULL,NULL),
(169,'RU000A0ZZRR6','Евразийский банк развития',20,135,NULL,NULL),
(170,'RU000A100JC1','Евразийский банк развития',20,135,NULL,NULL),
(171,'RU000A101574','Евразийский банк развития',20,135,NULL,NULL),
(172,'RU000A101L54','Евразийский банк развития',19,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(173,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL),
(174,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL),
(175,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL),
(176,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL),
(177,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL),
(178,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL),
(179,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL),
(180,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL),
(181,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL),
(182,NULL,'ИНГ БАНК (ЕВРАЗИЯ) АКЦИОНЕРНОЕ ОБЩЕСТВО',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(183,'US98387E2054','Икс 5 Ритейл Груп Н.В. (X5 Retail Group N.V.) (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(184,'US74735M1080','КИВИ ПиЭлСи (QIWI PLC) (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(185,'RU000A0JXSD3','Комитет финансов Волгоградской области',21,135,NULL,NULL),
(186,'RU000A0JV2J0','Комитет финансов Ленинградской области',21,135,NULL,NULL),
(187,'RU000A0ZYHX8','Комитет финансов Санкт-Петербурга',21,135,NULL,NULL),
(188,'RU000A0ZYKJ1','Комитет финансов Санкт-Петербурга',21,135,NULL,NULL),
(189,'RU000A102A15','Комитет финансов Санкт-Петербурга',21,135,NULL,NULL),
(190,'RU000A102K88','Комитет финансов Санкт-Петербурга',21,135,NULL,NULL),
(191,'US52634T2006','Международная компания публичное акционерное общество "Лента" (эмитент депозитарных расписок - Deutsche Bank Trust Company Americas (Дойче Банк Трасти Компани Америкас))',12,NULL,NULL,NULL),
(192,'RU000A1025V3','Международная компания публичное акционерное общество "Объединённая Компания "РУСАЛ"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(193,'RU000A100K72','Международная компания публичное акционерное общество "ЭН+ ГРУП"',8,123,NULL,NULL),
(194,'RU000A0JUQP7','Министерство управления финансами Самарской области',21,135,NULL,NULL),
(195,'RU000A0JWM56','Министерство управления финансами Самарской области',21,135,NULL,NULL),
(196,'RU000A0JXT41','Министерство управления финансами Самарской области',21,135,NULL,NULL),
(197,'RU000A0ZZ9P8','Министерство управления финансами Самарской области',21,135,NULL,NULL),
(198,'RU000A1020L5','Министерство управления финансами Самарской области',21,135,NULL,NULL),
(199,'RU000A0JX2S9','Министерство финансов Калининградской области',21,135,NULL,NULL),
(200,'RU000A0ZYKU8','Министерство финансов Калининградской области',21,135,NULL,NULL),
(201,'RU000A102KN2','Министерство финансов Калининградской области',21,135,NULL,NULL),
(202,'RU000A0ZZSW4','Министерство финансов Камчатского края',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(203,'RU000A0JXYS9','Министерство финансов Краснодарского края',21,135,NULL,NULL),
(204,'RU000A0ZZ8X4','Министерство финансов Краснодарского края',21,135,NULL,NULL),
(205,'RU000A1011B5','Министерство финансов Краснодарского края',21,135,NULL,NULL),
(206,'RU000A0ZYB40','Министерство финансов Кузбасса',21,135,NULL,NULL),
(207,'RU000A0ZYDQ1','Министерство финансов Нижегородской области',21,135,NULL,NULL),
(208,'RU000A0JWLD0','Министерство финансов Нижегородской области',21,135,NULL,NULL),
(209,'RU000A0ZZUT6','Министерство финансов Нижегородской области',21,135,NULL,NULL),
(210,'RU000A101665','Министерство финансов Нижегородской области',21,135,NULL,NULL),
(211,'RU000A102DS6','Министерство финансов Нижегородской области',21,135,NULL,NULL),
(212,'RU000A0JWX87','Министерство финансов Омской области',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(213,'RU000A102DR8','Министерство финансов Омской области',21,135,NULL,NULL),
(214,'RU000A0JUPE3','Министерство финансов Оренбургской области',21,135,NULL,NULL),
(215,'RU000A0JVM81','Министерство финансов Оренбургской области',21,135,NULL,NULL),
(216,'RU000A0ZYKH5','Министерство финансов Оренбургской области',21,135,NULL,NULL),
(217,'RU000A1026B3','Министерство финансов Республики Башкортостан',21,135,NULL,NULL),
(218,'RU000A0JVKF9','Министерство финансов Республики Коми',21,135,NULL,NULL),
(219,'RU000A0JWZM1','Министерство финансов Республики Коми',21,135,NULL,NULL),
(220,'RU000A0JXUD9','Министерство финансов Республики Коми',21,135,NULL,NULL),
(221,'RU000A0JY031','Министерство финансов Республики Марий Эл',21,135,NULL,NULL),
(222,'RU000A0JUQH4','Министерство финансов Республики Саха (Якутия)',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(223,'RU000A0JWGT6','Министерство финансов Республики Саха (Якутия)',21,135,NULL,NULL),
(224,'RU000A0JXR43','Министерство финансов Республики Саха (Якутия)',21,135,NULL,NULL),
(225,'RU000A0ZZ7E6','Министерство финансов Республики Саха (Якутия)',21,135,NULL,NULL),
(226,'RU000A0ZZNJ2','Министерство финансов Республики Саха (Якутия)',21,135,NULL,NULL),
(227,'RU000A100CN3','Министерство финансов Республики Саха (Якутия)',21,135,NULL,NULL),
(228,'RU000A1010D3','Министерство финансов Республики Саха (Якутия)',21,135,NULL,NULL),
(229,'RU000A101P27','Министерство финансов Республики Саха (Якутия)',21,135,NULL,NULL),
(230,'XS0767472458','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(231,'XS0767473852','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(232,'XS0971721450','Министерство финансов Российской Федерации',13,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(233,'XS0971721963','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(234,'RU000A0JWHA4','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(235,'RU000A0JXTS9','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(236,'RU000A0JXU14','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(237,'RU000A0ZYYN4','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(238,'RU000A1006S9','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(239,'RU000A0ZZVE6','Министерство финансов Российской Федерации',13,30,NULL,NULL),
(240,'RU000A102CK5','Министерство финансов Российской Федерации',13,30,NULL,NULL),
(241,'RU000A102CL3','Министерство финансов Российской Федерации',13,30,NULL,NULL),
(242,'RU000A100QS2','Министерство финансов Российской Федерации',23,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(243,'RU000A101CK7','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(244,'RU000A0ZYCK6','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(245,'RU000A101FA1','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(246,'RU000A0JREQ7','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(247,'RU000A0JS3W6','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(248,'RU000A0JSMA2','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(249,'RU000A0JTJL3','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(250,'RU000A0JTK38','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(251,'RU000A0JU4L3','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(252,'RU000A0JVW30','Министерство финансов Российской Федерации',23,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(253,'RU000A0JVW48','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(254,'RU000A0JWM07','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(255,'RU000A0JXB41','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(256,'RU000A0JXFM1','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(257,'RU000A0JXQF2','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(258,'RU000A0ZYU88','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(259,'RU000A0ZYUA9','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(260,'RU000A0ZYUB7','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(261,'RU000A0ZZYW2','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(262,'RU000A1007F4','Министерство финансов Российской Федерации',23,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(263,'RU000A100A82','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(264,'RU000A100EG3','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(265,'RU000A100EF5','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(266,'RU000A100MY9','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(267,'RU000A1014N4','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(268,'RU000A101F94','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(269,'RU000A101QE0','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(270,'RU000A1028E3','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(271,'RU000A102BT8','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(272,'RU000A0JV4L2','Министерство финансов Российской Федерации',23,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(273,'RU000A0JV4M0','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(274,'RU000A0JV4P3','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(275,'RU000A0JV4N8','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(276,'RU000A0JV4Q1','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(277,'RU000A0JX0H6','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(278,'RU000A101KT1','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(279,'RU000A101N52','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(280,'RU000A1025A7','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(281,'RU000A1025B5','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(282,'RU000A1028D5','Министерство финансов Российской Федерации',23,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(283,'RU000A102A31','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(284,'RU000A102A49','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(285,'RU000A102BV4','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(286,'RU0002867854','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(287,'RU0002868001','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(288,'RU000A0D0G29','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(289,'RU000A0GN9A7','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(290,'RU000A0JPLH5','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(291,'RU000A0JRTL6','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(292,'RU000A0JVMH1','Министерство финансов Российской Федерации',23,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(293,'RU000A0ZYZ26','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(294,'RU000A102069','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(295,'RU000A100SG3','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(296,'RU000A1019F9','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(297,'RU000A101WW0','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(298,'RU000A102P00','Министерство финансов Российской Федерации',23,135,NULL,NULL),
(299,'XS0088543193','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(300,'US78307AAE38','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(301,'XS0114288789','Министерство финансов Российской Федерации',13,123,NULL,NULL),
(302,'US78307ACZ49','Министерство финансов Российской Федерации',13,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(303,'RU000A101UG7','Министерство финансов Свердловской области',21,135,NULL,NULL),
(304,'RU000A102DQ0','Министерство финансов Свердловской области',21,135,NULL,NULL),
(305,'RU000A102HF4','Министерство финансов Свердловской области',21,135,NULL,NULL),
(306,'RU000A0JWZ77','Министерство финансов Свердловской области',21,135,NULL,NULL),
(307,'RU000A0ZYDU3','Министерство финансов Свердловской области',21,135,NULL,NULL),
(308,'RU000A0ZZQH9','Министерство финансов Свердловской области',21,135,NULL,NULL),
(309,'RU000A1016N9','Министерство финансов Свердловской области',21,135,NULL,NULL),
(310,'RU000A101Z17','Министерство финансов Свердловской области',21,135,NULL,NULL),
(311,'RU000A102CT6','Министерство финансов Свердловской области',21,135,NULL,NULL),
(312,'RU000A0JWY29','Министерство финансов Ставропольского края',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(313,'RU000A102H34','Министерство финансов Ставропольского края',21,135,NULL,NULL),
(314,'RU000A102CX8','Министерство финансов Ульяновской области',21,135,NULL,NULL),
(315,'RU000A101U61','Министерство финансов Ульяновской области',21,135,NULL,NULL),
(316,'RU000A102FV5','Министерство финансов Челябинской области',21,135,NULL,NULL),
(317,'RU000A102L61','Министерство финансов Челябинской области',21,135,NULL,NULL),
(318,'RU000A102L79','Министерство финансов Челябинской области',21,135,NULL,NULL),
(319,'RU000A0JWUV3','Министерство финансов и налоговой политики Новосибирской области',21,135,NULL,NULL),
(320,'RU000A0ZYBD3','Министерство финансов и налоговой политики Новосибирской области',21,135,NULL,NULL),
(321,'RU000A0ZZPB4','Министерство финансов и налоговой политики Новосибирской области',21,135,NULL,NULL),
(322,'RU000A1011Q3','Министерство финансов и налоговой политики Новосибирской области',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1703,'RU000A1027K2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(323,'RU000A102895','Министерство финансов и налоговой политики Новосибирской области',21,135,NULL,NULL),
(324,'RU000A0ZYML3','Министерство экономики и финансов Московской области',21,135,NULL,NULL),
(325,'RU000A100XP4','Министерство экономики и финансов Московской области',21,135,NULL,NULL),
(326,'RU000A101988','Министерство экономики и финансов Московской области',21,135,NULL,NULL),
(327,'RU000A101WL3','Министерство экономики и финансов Московской области',21,135,NULL,NULL),
(328,'RU000A0JX0B9','Министерство экономики и финансов Московской области',21,135,NULL,NULL),
(329,'RU000A102CR0','Министерство экономики и финансов Московской области',21,135,NULL,NULL),
(330,'RU000A102G35','Министерство экономики и финансов Московской области',21,135,NULL,NULL),
(331,'RU000A0JVUD3','Мэрия города Новосибирска',24,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(332,'RU000A0JWHW8','Мэрия города Новосибирска',24,135,NULL,NULL),
(333,'RU000A0ZYH93','Мэрия города Новосибирска',24,135,NULL,NULL),
(334,'RU000A100WF7','Мэрия города Новосибирска',24,135,NULL,NULL),
(335,'RU000A0JX3M0','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(336,'RU000A0JXRM6','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(337,'RU000A0JXS26','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(338,'RU000A0ZYJT2','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(339,'RU000A0ZYLX0','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(340,'RU000A0ZYL89','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(341,'RU000A1019A0','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(342,'RU000A0ZZNW5','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(343,'RU000A101JD7','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(344,'RU000A0ZZCH9','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(345,'RU000A0ZZV86','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(346,'RU000A0ZZZ58','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(347,'RU000A0ZZZ09','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(348,'RU000A100DQ4','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(349,'RU000A100ZB9','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(350,'RU000A100YY4','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(351,'RU000A1016B4','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(352,'RU000A1018T2','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(353,'RU000A101U95','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(354,'RU000A101TD6','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(355,'RU000A101X01','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(356,'RU000A102AP8','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(357,'RU000A102D46','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',22,135,NULL,NULL),
(358,'RU000A102GV3','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',20,135,NULL,NULL),
(359,'RU000A102JB9','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',20,135,NULL,NULL),
(360,'RU000A102GD1','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',20,135,NULL,NULL),
(361,'RU000A102K13','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(362,'RU000A102L87','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',20,135,NULL,NULL),
(363,'RU000A102L53','Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',20,135,NULL,NULL),
(364,NULL,'Общество с ограниченной ответственностью "ДОМ.РФ Ипотечный агент"',20,135,NULL,NULL),
(365,'RU000A0JWUD1','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(366,'RU000A0JXRS3','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(367,'RU000A0ZZ083','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(1763,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(368,'RU000A0JVUX1','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(369,'RU000A1002L3','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(370,'RU000A0JW9G0','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(371,'RU000A100AB2','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(372,'RU000A0JWG05','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(373,'RU000A100V46','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(374,'RU000A0JWPL4','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(375,'RU000A1010X1','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(376,'RU000A1016P4','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(377,'RU000A1016Q2','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(378,'RU000A101LH4','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(379,'RU000A101QA8','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL),
(380,'RU000A101UQ6','Общество с ограниченной ответственностью "ИКС 5 ФИНАНС"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(381,'RU000A0JW316','Общество с ограниченной ответственностью "Ипотечный агент АкБарс2"',22,135,NULL,NULL),
(382,'RU000A100782','Общество с ограниченной ответственностью "Лента"',20,135,NULL,NULL),
(383,'RU000A1011A7','Общество с ограниченной ответственностью "Лента"',20,135,NULL,NULL),
(384,'RU000A101R33','Общество с ограниченной ответственностью "Лента"',20,135,NULL,NULL),
(385,'RU000A0JVRN8','Общество с ограниченной ответственностью "Лента"',20,135,NULL,NULL),
(386,'RU000A0JVF98','Общество с ограниченной ответственностью "Магистраль двух столиц"',22,135,NULL,NULL),
(387,'RU000A0JVLA8','Общество с ограниченной ответственностью "Магистраль двух столиц"',22,135,NULL,NULL),
(388,'RU000A101R66','Общество с ограниченной ответственностью "РСХБ Управление Активами"',14,NULL,NULL,NULL),
(389,'RU000A1011S9','Общество с ограниченной ответственностью "Тинькофф Капитал"',14,NULL,NULL,NULL),
(390,'RU000A1011T7','Общество с ограниченной ответственностью "Тинькофф Капитал"',14,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(391,'RU000A1011U5','Общество с ограниченной ответственностью "Тинькофф Капитал"',14,NULL,NULL,NULL),
(392,'RU000A101X50','Общество с ограниченной ответственностью "Тинькофф Капитал"',14,NULL,NULL,NULL),
(393,'RU000A101X68','Общество с ограниченной ответственностью "Тинькофф Капитал"',14,NULL,NULL,NULL),
(394,'RU000A101X76','Общество с ограниченной ответственностью "Тинькофф Капитал"',14,NULL,NULL,NULL),
(395,'RU000A102EM7','Общество с ограниченной ответственностью "Тинькофф Капитал"',14,NULL,NULL,NULL),
(396,'RU000A102EK1','Общество с ограниченной ответственностью "Тинькофф Капитал"',14,NULL,NULL,NULL),
(397,'RU000A102EQ8','Общество с ограниченной ответственностью "Тинькофф Капитал"',14,NULL,NULL,NULL),
(398,'RU000A1006V3','Общество с ограниченной ответственностью "Управляющая компания "Альфа-Капитал"',14,NULL,NULL,NULL),
(399,'RU000A101PN3','Общество с ограниченной ответственностью "Управляющая компания "Альфа-Капитал"',14,NULL,NULL,NULL),
(400,'RU000A102E78','Общество с ограниченной ответственностью "Управляющая компания "Альфа-Капитал"',14,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(401,'RU000A102FK8','Общество с ограниченной ответственностью "Управляющая компания "Альфа-Капитал"',14,NULL,NULL,NULL),
(402,'RU000A100VK9','Общество с ограниченной ответственностью "Управляющая компания "Восток-Запад"',14,NULL,NULL,NULL),
(403,'RU000A102N02','Общество с ограниченной ответственностью "Управляющая компания "ДОХОДЪ"',14,NULL,NULL,NULL),
(404,'RU000A1024K9','Общество с ограниченной ответственностью "Управляющая компания "ОТКРЫТИЕ"',14,NULL,NULL,NULL),
(405,'RU000A102697','Общество с ограниченной ответственностью "Управляющая компания "Райффайзен Капитал"',14,NULL,NULL,NULL),
(406,'RU000A100UG9','Общество с ограниченной ответственностью "Хоум Кредит энд Финанс Банк"',20,135,NULL,NULL),
(407,'RU000A102RF3','Общество с ограниченной ответственностью "Хоум Кредит энд Финанс Банк"',20,135,NULL,NULL),
(408,'RU000A100YT4','Общество с ограниченной ответственностью "Экспобанк"',20,135,NULL,NULL),
(409,'RU000A102WL1','Общество с ограниченной ответственностью "Экспобанк"',20,135,NULL,NULL),
(410,'RU000A101LA9','Общество с ограниченной ответственностью УК "Система Капитал"',14,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(411,'US69269L1044','Озон Холдингс ПиЭлСи (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(1764,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(412,'RU0009100945','ПУБЛИЧНОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО "БАНК "САНКТ-ПЕТЕРБУРГ"',8,135,NULL,NULL),
(413,'JE00B6T5S470','Полиметалл Интернэшнл плс (Polymetal International plc)',9,NULL,NULL,NULL),
(414,'RU000A0JWKB6','Правительство Белгородской области',21,135,NULL,NULL),
(415,'RU000A100PP0','Правительство Белгородской области',21,135,NULL,NULL),
(416,'RU000A100Y84','Правительство Белгородской области',21,135,NULL,NULL),
(417,'RU000A101PA0','Правительство Белгородской области',21,135,NULL,NULL),
(418,'RU000A101RB4','Правительство Белгородской области',21,135,NULL,NULL),
(419,'RU000A1025F6','Правительство Белгородской области',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(420,'RU000A0JUQB7','Правительство Белгородской области',21,135,NULL,NULL),
(421,'RU000A0JXTW1','Правительство Белгородской области',21,135,NULL,NULL),
(422,'RU000A0JNYN1','Правительство Москвы в лице Департамента финансов города Москвы',21,135,NULL,NULL),
(423,'RU000A0JX215','Правительство Ханты-Мансийского автономного округа - Югры',21,135,NULL,NULL),
(424,'RU000A0ZYKW4','Правительство Ханты-Мансийского автономного округа - Югры',21,135,NULL,NULL),
(425,'RU000A0JX0Z8','Правительство Ямало-Ненецкого автономного округа',21,135,NULL,NULL),
(426,'NL0009805522','Публичная Компания с ограниченной ответственностью Яндекс Н.В. (Public Limited Liability Company Yandex N.V.)',9,30,NULL,NULL),
(427,'RU000A0JTM28','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',22,135,NULL,NULL),
(428,'RU000A0JTM36','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',22,135,NULL,NULL),
(429,'RU000A0JTM44','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(430,'RU000A0JTM51','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',22,135,NULL,NULL),
(431,'RU000A0DQZE3','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',8,135,NULL,NULL),
(432,'RU000A101XN7','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(433,'RU000A1023K1','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(434,'RU000A102FS1','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(435,'RU000A102FT9','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(436,'RU000A102SV8','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(437,'RU000A102SX4','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(438,'RU0009062285','Публичное акционерное общество "Аэрофлот – российские авиалинии"',8,135,NULL,NULL),
(439,'RU000A1015E0','Публичное акционерное общество "Белуга Групп"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(440,'RU000A100L63','Публичное акционерное общество "Белуга Групп"',20,135,NULL,NULL),
(441,'RU000A102GU5','Публичное акционерное общество "Белуга Групп"',20,135,NULL,NULL),
(442,'RU000A0ZZ1H2','Публичное акционерное общество "Вторая генерирующая компания оптового рынка электроэнергии"',20,135,NULL,NULL),
(443,'RU0007661625','Публичное акционерное общество "Газпром"',8,135,NULL,NULL),
(444,'RU000A0ZZER4','Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(445,'RU000A0ZZES2','Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(446,'RU000A0ZZET0','Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(447,'RU0007288411','Публичное акционерное общество "Горно-металлургическая компания "Норильский никель"',8,135,NULL,NULL),
(448,'RU000A0JPFP0','Публичное акционерное общество "Группа ЛСР"',8,135,NULL,NULL),
(449,'RU000A0JWU98','Публичное акционерное общество "Группа ЛСР"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(450,'RU000A0JXPM0','Публичное акционерное общество "Группа ЛСР"',20,135,NULL,NULL),
(451,'RU000A0ZYBV5','Публичное акционерное общество "Группа ЛСР"',20,135,NULL,NULL),
(452,'RU000A100WA8','Публичное акционерное общество "Группа ЛСР"',20,135,NULL,NULL),
(453,'RU000A100ZL8','Публичное акционерное общество "Группа ЛСР"',20,135,NULL,NULL),
(454,'RU000A102T63','Публичное акционерное общество "Группа ЛСР"',20,135,NULL,NULL),
(455,'RU000A1013Y3','Публичное акционерное общество "Группа Черкизово"',20,135,NULL,NULL),
(456,'RU000A1024W4','Публичное акционерное общество "Группа Черкизово"',20,135,NULL,NULL),
(457,'RU000A102LD1','Публичное акционерное общество "Группа Черкизово"',20,135,NULL,NULL),
(458,'RU000A0JSQ90','Публичное акционерное общество "Детский мир"',8,135,NULL,NULL),
(459,'RU000A1015A8','Публичное акционерное общество "Детский мир"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(460,'RU000A101MT7','Публичное акционерное общество "Детский мир"',20,135,NULL,NULL),
(461,'RU000A1009B9','Публичное акционерное общество "Детский мир"',20,135,NULL,NULL),
(462,'RU000A0JPNM1','Публичное акционерное общество "Интер РАО ЕЭС"',8,135,NULL,NULL),
(463,'RU000A1003C0','Публичное акционерное общество "КАМАЗ"',20,135,NULL,NULL),
(464,'RU000A1007V1','Публичное акционерное общество "КАМАЗ"',20,135,NULL,NULL),
(465,'RU000A100FR7','Публичное акционерное общество "КАМАЗ"',20,135,NULL,NULL),
(466,'RU000A100K49','Публичное акционерное общество "КАМАЗ"',20,135,NULL,NULL),
(467,'RU000A100YK3','Публичное акционерное общество "КАМАЗ"',20,135,NULL,NULL),
(468,'RU000A101SM9','Публичное акционерное общество "КАМАЗ"',20,135,NULL,NULL),
(469,'RU000A0JPGA0','Публичное акционерное общество "М.видео"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(470,'RU000A0JKQU8','Публичное акционерное общество "Магнит"',8,135,NULL,NULL),
(471,'RU000A101HJ8','Публичное акционерное общество "Магнит"',20,135,NULL,NULL),
(472,'RU000A1002U4','Публичное акционерное общество "Магнит"',20,135,NULL,NULL),
(473,'RU000A101MC3','Публичное акционерное общество "Магнит"',20,135,NULL,NULL),
(474,'RU000A101PJ1','Публичное акционерное общество "Магнит"',20,135,NULL,NULL),
(475,'RU000A100ZS3','Публичное акционерное общество "Магнит"',20,135,NULL,NULL),
(476,'RU000A1018X4','Публичное акционерное общество "Магнит"',20,135,NULL,NULL),
(477,'RU0009084396','Публичное акционерное общество "Магнитогорский металлургический комбинат"',8,135,NULL,NULL),
(478,'RU000A0DKXV5','Публичное акционерное общество "Мечел"',8,135,NULL,NULL),
(479,'RU000A0JPV70','Публичное акционерное общество "Мечел"',10,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(480,'RU0007775219','Публичное акционерное общество "Мобильные ТелеСистемы"',8,135,NULL,NULL),
(481,'RU000A0JTTA5','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(482,'RU000A0JXEV5','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(483,'RU000A0JWRV9','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(484,'RU000A0ZYFC6','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(485,'RU000A0ZYWX7','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(486,'RU000A0ZYWY5','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(487,'RU000A100238','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(488,'RU000A100A58','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(489,'RU000A100A66','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(490,'RU000A100HU7','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(491,'RU000A100L55','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(492,'RU000A100ZK0','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(493,'RU000A101939','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(494,'RU000A101FH6','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(495,'RU000A101NG2','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(496,'RU000A101NH0','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(497,'RU000A101RD0','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(498,'RU000A102VL3','Публичное акционерное общество "Мобильные ТелеСистемы"',20,135,NULL,NULL),
(499,'RU000A0JR4A1','Публичное акционерное общество "Московская Биржа ММВБ-РТС"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(500,'RU0009024277','Публичное акционерное общество "Нефтяная компания "ЛУКОЙЛ"',8,135,NULL,NULL),
(501,'RU0009046452','Публичное акционерное общество "Новолипецкий металлургический комбинат"',8,135,NULL,NULL),
(502,'RU000A0JP7J7','Публичное акционерное общество "ПИК-специализированный застройщик"',8,135,NULL,NULL),
(503,'RU000A0JXK40','Публичное акционерное общество "ПИК-специализированный застройщик"',20,135,NULL,NULL),
(504,'RU000A0JXQ93','Публичное акционерное общество "ПИК-специализированный застройщик"',20,135,NULL,NULL),
(505,'RU000A0JXY44','Публичное акционерное общество "ПИК-специализированный застройщик"',20,135,NULL,NULL),
(506,'RU000A0ZZ1M2','Публичное акционерное общество "ПИК-специализированный застройщик"',20,135,NULL,NULL),
(507,'RU000A0ZZ3S5','Публичное акционерное общество "ПИК-специализированный застройщик"',20,135,NULL,NULL),
(508,'RU000A0ZZAW2','Публичное акционерное общество "ПИК-специализированный застройщик"',20,135,NULL,NULL),
(509,'RU000A0ZZBJ7','Публичное акционерное общество "ПИК-специализированный застройщик"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(510,'RU000A0JNAA8','Публичное акционерное общество "Полюс"',8,135,NULL,NULL),
(511,'RU000A0JVMD0','Публичное акционерное общество "Полюс"',20,135,NULL,NULL),
(512,'RU000A100XC2','Публичное акционерное общество "Полюс"',20,135,NULL,NULL),
(513,'RU000A0JVM99','Публичное акционерное общество "Полюс"',20,135,NULL,NULL),
(514,'RU000A0JVMB4','Публичное акционерное общество "Полюс"',20,135,NULL,NULL),
(515,'RU000A0JPVJ0','Публичное акционерное общество "Российские сети"',8,135,NULL,NULL),
(516,'RU000A0JPVK8','Публичное акционерное общество "Российские сети"',10,135,NULL,NULL),
(517,'RU0008943394','Публичное акционерное общество "Ростелеком"',8,135,NULL,NULL),
(518,'RU0009046700','Публичное акционерное общество "Ростелеком"',10,135,NULL,NULL),
(519,'RU000A0JVFC6','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(520,'RU000A0JWTN2','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL),
(521,'RU000A101541','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL),
(522,'RU000A0JXPN8','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL),
(523,'RU000A101FC7','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL),
(524,'RU000A0ZYG52','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL),
(525,'RU000A101FG8','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL),
(526,'RU000A0ZYYE3','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL),
(527,'RU000A101LY9','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL),
(528,'RU000A100881','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL),
(529,'RU000A1028G8','Публичное акционерное общество "Ростелеком"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(530,'RU000A0JVW89','Публичное акционерное общество "САФМАР Финансовые инвестиции"',8,135,NULL,NULL),
(531,'RU0009029540','Публичное акционерное общество "Сбербанк России"',8,135,NULL,NULL),
(532,'RU0009029557','Публичное акционерное общество "Сбербанк России"',10,135,NULL,NULL),
(533,'RU000A101QW2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(534,'RU000A1025U5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(535,'RU000A102FR3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(536,'RU000A102CU4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(537,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(538,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(539,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(540,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(541,'RU000A102RS6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(542,'RU000A102YG7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(543,'RU000A102YH5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(544,'RU000A0ZYUJ0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(545,'RU000A0ZZ117','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(546,'RU000A100KX5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(547,'RU000A100K80','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(548,'RU000A100KW7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(549,'RU000A0ZZBN9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(550,'RU000A100VB8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(551,'RU000A0ZZE20','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(552,'RU000A1012R9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(553,'RU000A0JXRW5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(554,'RU000A101C89','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(555,'RU000A0JWUE9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(556,'RU000A0ZZWZ9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(557,'RU000A0ZZXS2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(558,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(559,'RU0009046510','Публичное акционерное общество "Северсталь"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(560,'RU000A0ZYX28','Публичное акционерное общество "Совкомбанк"',22,123,NULL,NULL),
(561,'RU000A0ZYWZ2','Публичное акционерное общество "Совкомбанк"',22,123,NULL,NULL),
(562,'RU000A101MB5','Публичное акционерное общество "Совкомбанк"',20,135,NULL,NULL),
(563,'RU000A101PP8','Публичное акционерное общество "Совкомбанк"',20,135,NULL,NULL),
(564,'RU000A102G01','Публичное акционерное общество "Совкомбанк"',20,135,NULL,NULL),
(565,'RU000A100DZ5','Публичное акционерное общество "Совкомбанк"',20,135,NULL,NULL),
(566,'RU000A0JWPA7','Публичное акционерное общество "Совкомбанк"',20,135,NULL,NULL),
(567,'RU000A0ZYJR6','Публичное акционерное общество "Совкомбанк"',20,135,NULL,NULL),
(568,'RU000A0JXNU8','Публичное акционерное общество "Современный коммерческий флот"',8,135,NULL,NULL),
(569,'RU0009033591','Публичное акционерное общество "Татнефть" имени В.Д. Шашина',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(570,'RU0006944147','Публичное акционерное общество "Татнефть" имени В.Д. Шашина',10,135,NULL,NULL),
(571,'RU000A1018K1','Публичное акционерное общество "Татнефть" имени В.Д. Шашина',20,135,NULL,NULL),
(572,NULL,'Публичное акционерное общество "Татнефть" имени В.Д. Шашина',20,135,NULL,NULL),
(573,'RU000A0JNUD0','Публичное акционерное общество "Территориальная генерирующая компания №1"',8,135,NULL,NULL),
(574,NULL,'Публичное акционерное общество "Территориальная генерирующая компания №1"',20,135,NULL,NULL),
(575,'RU0009091573','Публичное акционерное общество "Транснефть"',10,135,NULL,NULL),
(576,'RU000A0ZYDD9','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(577,'RU000A0ZYUS1','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(578,'RU000A0ZZ349','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(579,'RU000A100JF4','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(580,'RU000A1010B7','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(581,'RU000A0B6NK6','Публичное акционерное общество "Трубная Металлургическая Компания"',8,135,NULL,NULL),
(582,'RU000A0JPKH7','Публичное акционерное общество "Федеральная гидрогенерирующая компания - РусГидро"',8,135,NULL,NULL),
(583,'RU000A0JTMG7','Публичное акционерное общество "Федеральная гидрогенерирующая компания - РусГидро"',22,135,NULL,NULL),
(584,'RU000A0JTMK9','Публичное акционерное общество "Федеральная гидрогенерирующая компания - РусГидро"',22,135,NULL,NULL),
(585,'RU000A0JVD25','Публичное акционерное общество "Федеральная гидрогенерирующая компания - РусГидро"',22,135,NULL,NULL),
(586,'RU000A0JPNN9','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',8,135,NULL,NULL),
(587,'RU000A0ZZQN7','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(588,'RU000A0JX090','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(589,'RU000A1028T1','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(590,'RU000A0ZYDH0','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(591,'RU000A101CL5','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(592,'RU000A101LX1','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(593,'RU000A0JRKT8','Публичное акционерное общество "ФосАгро"',8,135,NULL,NULL),
(594,'RU000A0ZYPG6','Публичное акционерное общество "Центр по перевозке грузов в контейнерах "ТрансКонтейнер"',20,135,NULL,NULL),
(595,'RU000A100YE6','Публичное акционерное общество "Центр по перевозке грузов в контейнерах "ТрансКонтейнер"',20,135,NULL,NULL),
(596,'RU000A0JWTH4','Публичное акционерное общество "Центр по перевозке грузов в контейнерах "ТрансКонтейнер"',20,135,NULL,NULL),
(597,'RU000A0F5UN3','Публичное акционерное общество "Энел Россия"',8,135,NULL,NULL),
(598,'RU000A0JNGA5','Публичное акционерное общество "Юнипро"',8,135,NULL,NULL),
(599,'RU000A102R73','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(600,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(601,'RU000A0JVC59','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(602,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(1704,'RU000A1027L0','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(603,'RU000A0JXLR8','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(604,'RU000A100L14','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(605,'RU000A0JV573','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(606,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(607,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(608,'RU000A101GR3','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(609,'RU000A0JSE60','Публичное акционерное общество Нефтегазовая компания "РуссНефть"',8,135,NULL,NULL),
(610,'RU0008958863','Публичное акционерное общество энергетики и электрификации "Мосэнерго"',8,135,NULL,NULL),
(611,NULL,'Публичное акционерное общество энергетики и электрификации "Мосэнерго"',20,135,NULL,NULL),
(612,NULL,'Публичное акционерное общество энергетики и электрификации "Мосэнерго"',20,135,NULL,NULL),
(613,'US7496552057','РОС АГРО ПЛС (ROS AGRO PLC) (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(614,'RU000A101RZ3','Республика Казахстан в лице Министерства финансов Республики Казахстан',19,135,NULL,NULL),
(615,'RU000A101RP4','Республика Казахстан в лице Министерства финансов Республики Казахстан',19,135,NULL,NULL),
(616,'RU000A101RV2','Республика Казахстан в лице Министерства финансов Республики Казахстан',19,135,NULL,NULL),
(617,'RU000A1013T3','Управление финансов Липецкой области',21,135,NULL,NULL),
(618,'RU000A102598','Управление финансов Липецкой области',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(619,'RU000A0ZZR33','Управление финансов Липецкой области',21,135,NULL,NULL),
(620,'IE00BMDKNM37','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(621,'IE00B7L7CP77','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(622,'IE00BD3QJN10','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(623,'IE00BD3QHZ91','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(624,'IE00BD3QJ757','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(625,'IE00BD5FH213','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(626,'IE00BD3QFB18','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(627,'IE00BK224M36','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(628,'IE00BK224L29','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(629,'IE00BG0C3K84','ФинЭкс Физикли Бэкт Фандз айкав (FinEx Physically Backed Funds ICAV) управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(630,'IE00B8XB7377','ФинЭкс Физикли Бэкт Фандз айкав (FinEx Physically Backed Funds ICAV) управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(631,'RU000A0JWT75','Финансовое управление Тамбовской области',21,135,NULL,NULL),
(632,'RU000A0JXVH8','Финансовое управление Тамбовской области',21,135,NULL,NULL),
(633,'RU000A0ZYJ18','Финансовое управление Тамбовской области',21,135,NULL,NULL),
(634,'RU000A0JWTV5','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(635,'RU000A102VR0','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(636,'RU000A0JX199','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(637,'RU000A0JXE06','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(638,'RU000A0JVA10','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(639,'RU000A0JXPG2','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(640,'RU000A0JVWD9','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(641,'RU000A0JY023','акционерное общество "Государственная транспортная лизинговая компания"',20,123,NULL,NULL),
(642,'RU000A0JVWJ6','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(643,'RU000A0ZYAP9','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(644,'RU000A0JW1P8','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(645,'RU000A0ZYNY4','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(646,'RU000A0JWST1','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(647,'RU000A0ZYR91','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(648,'RU000A0ZZ1J8','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(649,'RU000A0ZZ984','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(650,'RU000A0ZZAL5','акционерное общество "Государственная транспортная лизинговая компания"',20,123,NULL,NULL),
(651,'RU000A0ZZV11','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(652,'RU000A1003A4','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(653,'RU000A100FE5','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(654,'RU000A100Z91','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(655,'RU000A101GD3','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(656,'RU000A101QL5','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(657,'RU000A101SC0','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(658,'RU000A101SD8','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(659,'RU000A102BF7','акционерное общество "Национальная компания "Продовольственная контрактная корпорация"',19,135,NULL,NULL),
(660,'RU000A0JVVA7','акционерное общество "РОСНАНО"',22,135,NULL,NULL),
(661,'RU000A0JW1G7','акционерное общество "РОСНАНО"',22,135,NULL,NULL),
(662,'RU000A1008V9','акционерное общество "РОСНАНО"',22,135,NULL,NULL),
(663,'RU000A0JRTN2','государственная корпорация развития "ВЭБ.РФ"',22,135,NULL,NULL),
(664,'RU000A0JT403','государственная корпорация развития "ВЭБ.РФ"',22,135,NULL,NULL),
(665,'RU000A0JT6B2','государственная корпорация развития "ВЭБ.РФ"',22,135,NULL,NULL),
(666,'RU000A0JS4Z7','государственная корпорация развития "ВЭБ.РФ"',22,135,NULL,NULL),
(667,'RU000A0JW6P7','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(668,'RU000A0JWNE4','государственная корпорация развития "ВЭБ.РФ"',20,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(669,'RU000A0JX4Q9','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(670,'RU000A0JXU48','государственная корпорация развития "ВЭБ.РФ"',20,123,NULL,NULL),
(671,'RU000A0JXU71','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(672,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(673,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(674,'RU000A102R16','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(675,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(676,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(677,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(678,'RU000A0ZYLJ9','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(679,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(680,'RU000A0ZZZP3','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(681,'RU000A1001V4','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(682,'RU000A1003W8','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(683,'RU000A100BM7','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(684,'RU000A100GY1','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(685,'RU000A1013P1','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(686,'RU000A101TB0','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(687,'RU000A101WE8','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(688,'RU000A101WF5','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(689,'RU000A102FC5','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(690,'RU000A102JP9','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(691,'RU000A102K96','государственная корпорация развития "ВЭБ.РФ"',20,123,NULL,NULL),
(692,'RU000A102UK7','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(693,'RU000A102UL5','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(694,'RU000A102UN1','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(695,'RU000A102UP6','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(696,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(697,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(698,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(699,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(700,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(701,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(702,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(703,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(704,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(705,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(706,NULL,'государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(707,'RU000A0ZYD55','департамент финансов Ямало-Ненецкого автономного округа',21,135,NULL,NULL),
(708,'RU000A0ZYM47','департамент финансов Ямало-Ненецкого автономного округа',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(709,'RU000A0JWXF0','министерство финансов Красноярского края',21,135,NULL,NULL),
(710,'RU000A0ZYCM2','министерство финансов Красноярского края',21,135,NULL,NULL),
(711,'RU000A0ZYFB8','министерство финансов Красноярского края',21,135,NULL,NULL),
(712,'RU000A0ZZC48','министерство финансов Красноярского края',21,135,NULL,NULL),
(713,'RU000A0ZZM87','министерство финансов Красноярского края',21,135,NULL,NULL),
(714,'RU000A0JSGV0','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(715,'RU000A0JXN05','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(716,'RU000A0JXQ44','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(717,'RU000A0JXR84','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(718,'RU000A0JXZB2','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(719,'RU000A0ZYU05','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(720,'RU000A0ZZ9R4','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(721,'RU000A1002C2','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(722,'RU000A1007Z2','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(723,'RU000A1008D7','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(724,'RU000A100HY9','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(725,'RU000A102QP4','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(726,'RU000A102R40','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(727,'RU000A101H43','публичное акционерное общество "Группа компаний "Самолет"',20,135,NULL,NULL),
(728,'RU000A102RX6','публичное акционерное общество "Группа компаний "Самолет"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(729,'RU000A0DKVS5','публичное акционерное общество "НОВАТЭК"',8,135,NULL,NULL),
(730,'RU000A0J2Q06','публичное акционерное общество "Нефтяная компания "Роснефть"',8,135,NULL,NULL),
(731,'RU000A0JT940','публичное акционерное общество "Нефтяная компания "Роснефть"',22,135,NULL,NULL),
(732,'RU000A0JT965','публичное акционерное общество "Нефтяная компания "Роснефть"',22,135,NULL,NULL),
(733,'RU000A0JTYL2','публичное акционерное общество "Нефтяная компания "Роснефть"',22,135,NULL,NULL),
(734,'RU000A0JTS06','публичное акционерное общество "Нефтяная компания "Роснефть"',22,135,NULL,NULL),
(735,'RU000A0JTS22','публичное акционерное общество "Нефтяная компания "Роснефть"',22,135,NULL,NULL),
(736,'RU000A0JTYM0','публичное акционерное общество "Нефтяная компания "Роснефть"',22,135,NULL,NULL),
(737,'RU000A0JTYN8','публичное акционерное общество "Нефтяная компания "Роснефть"',22,135,NULL,NULL),
(738,'RU000A0JUFU0','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(739,'RU000A0JX132','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(740,'RU000A0ZYJH7','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(741,'RU000A0ZYJJ3','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(742,'RU000A0ZYLG5','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(743,'RU000A0JXQK2','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(744,'RU000A0ZYT40','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(745,'RU000A0JXR68','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(746,'RU000A0ZYVU5','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(747,'RU000A0JXXD3','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(748,'RU000A1008P1','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(749,'RU000A0JUFV8','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(750,'RU000A0JXXE1','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(751,'RU000A1008Q9','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(752,'RU000A0ZYCP5','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(753,'RU000A100KY3','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(754,'RU000A100YQ0','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(755,'RU000A101SF3','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(756,'RU000A0JT6J5','"Газпромбанк" (Акционерное общество)',22,135,NULL,NULL),
(757,'RU000A0ZZQU2','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(758,'RU000A0ZZUL3','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(759,'RU000A0ZZXM5','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(760,'RU000A1002E8','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(761,'RU000A1003R8','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(762,'RU000A1007E7','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(763,'RU000A100832','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(764,'RU000A100AF3','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(765,'RU000A100DX0','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(766,'RU000A100HH4','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(767,'RU000A100JB3','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(768,'RU000A100VR4','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(769,'RU000A101350','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(770,'RU000A0JXP45','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(771,'RU000A0ZYEE5','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(772,'RU000A0ZYRX7','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(773,'RU000A0ZYRY5','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(774,'RU000A0ZYMN9','Акционерное общество "Вертолеты России"',20,135,NULL,NULL),
(775,'RU000A0ZYMM1','Акционерное общество "Вертолеты России"',20,135,NULL,NULL),
(776,'RU000A101NQ1','Акционерное общество "Всероссийский банк развития регионов"',20,135,NULL,NULL),
(777,'RU000A100691','Акционерное общество "Всероссийский банк развития регионов"',20,135,NULL,NULL),
(778,'RU000A0JR4U9','Акционерное общество "Главная дорога"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(779,'RU000A0JTFB2','Акционерное общество "Главная дорога"',22,135,NULL,NULL),
(780,'RU000A0JTB96','Акционерное общество "Главная дорога"',22,135,NULL,NULL),
(781,'RU000A0JWK66','Акционерное общество "Группа компаний "Пионер"',20,135,NULL,NULL),
(782,'RU000A102KG6','Акционерное общество "Группа компаний "Пионер"',20,135,NULL,NULL),
(783,'RU000A0ZYLU6','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(784,'RU000A0ZYQU5','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(785,'RU000A0JX2R1','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(786,'RU000A0ZYF20','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(787,'RU000A0ZYF38','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(788,'RU000A0ZYFM5','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(789,'RU000A0ZYFN3','Акционерное общество "ДОМ.РФ"',20,135,NULL,NULL),
(790,'RU000A0JXPU3','Акционерное общество "Концерн "Калашников"',20,135,NULL,NULL),
(1705,'RU000A1027M8','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(791,'RU000A1008Z0','Акционерное общество "Минерально-химическая компания "ЕвроХим"',20,135,NULL,NULL),
(792,'RU000A100LS3','Акционерное общество "Минерально-химическая компания "ЕвроХим"',20,135,NULL,NULL),
(793,'RU000A100LV7','Акционерное общество "Минерально-химическая компания "ЕвроХим"',20,135,NULL,NULL),
(794,'RU000A100RG5','Акционерное общество "Минерально-химическая компания "ЕвроХим"',20,135,NULL,NULL),
(795,'RU000A101L96','Акционерное общество "Минерально-химическая компания "ЕвроХим"',20,135,NULL,NULL),
(796,'RU000A101LJ0','Акционерное общество "Минерально-химическая компания "ЕвроХим"',20,135,NULL,NULL),
(797,NULL,'Акционерное общество "Новая концессионная компания"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(798,'RU000A1021F5','Акционерное общество "Новая концессионная компания"',22,135,NULL,NULL),
(799,'RU000A102RB2','Акционерное общество "Новая концессионная компания"',22,135,NULL,NULL),
(800,'RU000A0JW0S4','Акционерное общество "Первый контейнерный терминал"',22,135,NULL,NULL),
(801,'RU000A0JW5E3','Акционерное общество "Первый контейнерный терминал"',22,135,NULL,NULL),
(802,'RU000A0JWBP5','Акционерное общество "Первый контейнерный терминал"',22,135,NULL,NULL),
(803,'RU000A0JWMJ5','Акционерное общество "РН Банк"',22,135,NULL,NULL),
(804,'RU000A102960','Акционерное общество "РН Банк"',20,135,NULL,NULL),
(805,'RU000A0ZZUK5','Акционерное общество "РН Банк"',20,135,NULL,NULL),
(806,'RU000A1003Q0','Акционерное общество "РН Банк"',20,135,NULL,NULL),
(807,'RU000A100A90','Акционерное общество "РН Банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(808,'RU000A100UU0','Акционерное общество "РН Банк"',20,135,NULL,NULL),
(809,NULL,'Акционерное общество "Райффайзенбанк"',20,135,NULL,NULL),
(810,'RU000A0JS5R1','Акционерное общество "Российский Банк поддержки малого и среднего предпринимательства"',22,135,NULL,NULL),
(811,'RU000A0JS603','Акционерное общество "Российский Банк поддержки малого и среднего предпринимательства"',22,135,NULL,NULL),
(812,'RU000A0JRMB2','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(813,'RU000A0JRMC0','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(814,'RU000A0JRLE8','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(815,'RU000A0JRVN8','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(816,'RU000A0JS6N8','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(817,'RU000A0JT7M7','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(818,'RU000A0JTVJ2','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(819,'RU000A0JU6A1','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(820,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(821,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(822,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(823,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(824,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(825,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(826,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(827,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(828,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(829,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(830,'RU000A0JXUC1','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(831,'RU000A0ZYBT9','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(832,'RU000A0ZYXJ4','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(833,'RU000A0ZZPZ3','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(834,'RU000A0JV805','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(835,'RU000A0JVWB3','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(836,'RU000A100GM6','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(837,'RU000A0JUW31','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(838,'RU000A0JUW72','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(839,'RU000A0JV3R1','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(840,'RU000A101129','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(841,'RU000A1011R1','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(842,'RU000A0JV987','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(843,'RU000A101DD0','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(844,'RU000A1026V1','Акционерное общество "Тойота Банк"',20,135,NULL,NULL),
(845,'RU000A100436','Акционерное общество "Тойота Банк"',20,135,NULL,NULL),
(846,'RU000A100YW8','Акционерное общество "Тойота Банк"',20,135,NULL,NULL),
(847,'RU000A0JQSM8','Акционерное общество "Управляющая компания "НИМБУС"',15,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(848,'RU000A0JXQ28','Акционерное общество "Федеральная пассажирская компания"',20,135,NULL,NULL),
(849,'RU000A0ZYLF7','Акционерное общество "Федеральная пассажирская компания"',20,135,NULL,NULL),
(850,'RU000A0ZYX69','Акционерное общество "Федеральная пассажирская компания"',20,135,NULL,NULL),
(851,'RU000A0ZZRK1','Акционерное общество "Федеральная пассажирская компания"',20,135,NULL,NULL),
(852,'RU000A0ZZTL5','Акционерное общество "Федеральная пассажирская компания"',20,135,NULL,NULL),
(853,'RU000A100E88','Акционерное общество "Федеральная пассажирская компания"',20,135,NULL,NULL),
(854,'RU000A1012B3','Акционерное общество "Федеральная пассажирская компания"',20,135,NULL,NULL),
(855,'RU000A0JTLJ3','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',22,135,NULL,NULL),
(856,'RU000A0JTLL9','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',22,135,NULL,NULL),
(857,'RU000A100YF3','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(858,'RU000A101EF3','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(859,'RU000A0JW5H6','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(860,'RU000A100B73','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(861,'RU000A101R90','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(862,'RU000A1029P7','Акционерное общество "ЭР-Телеком Холдинг"',20,135,NULL,NULL),
(863,'RU000A101D13','Акционерное общество Группа компаний "Сегежа"',20,135,NULL,NULL),
(864,'RU000A1014S3','Акционерное общество Холдинговая компания "Новотранс"',20,135,NULL,NULL),
(865,NULL,'Акционерное общество Холдинговая компания "Новотранс"',20,135,NULL,NULL),
(866,'RU000A100030','Государственная компания "Российские автомобильные дороги"',20,135,NULL,NULL),
(867,'RU000A102H91','Государственная компания "Российские автомобильные дороги"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(868,'RU000A100048','Государственная компания "Российские автомобильные дороги"',20,135,NULL,NULL),
(869,'RU000A100B40','Государственная компания "Российские автомобильные дороги"',20,135,NULL,NULL),
(870,'RU000A1017H9','Государственная компания "Российские автомобильные дороги"',20,135,NULL,NULL),
(871,'RU000A0JVYG8','Государственный специализированный Российский экспортно-импортный банк (акционерное общество)',22,135,NULL,NULL),
(872,'RU000A101T56','Государственный специализированный Российский экспортно-импортный банк (акционерное общество)',20,135,NULL,NULL),
(873,'RU000A101UE2','Государственный специализированный Российский экспортно-импортный банк (акционерное общество)',20,135,NULL,NULL),
(874,'RU000A101780','Государственный специализированный Российский экспортно-импортный банк (акционерное общество)',20,135,NULL,NULL),
(875,'RU000A0JUD00','Закрытое акционерное общество "Восточно - Сибирский ипотечный агент 2012"',22,135,NULL,NULL),
(876,'RU000A0JNUW0','Закрытое акционерное общество Управляющая компания "РВМ Капитал"',15,NULL,NULL,NULL),
(877,'RU000A0JPM71','Закрытое акционерное общество Управляющая компания "РВМ Капитал"',15,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(878,'RU000A0JPLG7','Закрытое акционерное общество Управляющая компания "РВМ Капитал"',15,NULL,NULL,NULL),
(879,'RU000A0JQYE3','Закрытое акционерное общество Управляющая компания "РВМ Капитал"',15,NULL,NULL,NULL),
(880,'RU000A0JS9A9','Закрытое акционерное общество Управляющая компания "РВМ Капитал"',15,NULL,NULL,NULL),
(881,'RU000A0JX314','Министерство финансов Иркутской области',21,135,NULL,NULL),
(882,'RU000A0ZZXZ7','Министерство финансов Кировской области',21,135,NULL,NULL),
(883,'RU000A0ZYG60','Министерство финансов Саратовской области',21,135,NULL,NULL),
(884,'RU000A0ZYJB0','Министерство финансов Ульяновской области',21,135,NULL,NULL),
(885,'RU000A100A33','Общество с ограниченной ответственностью "Буровая компания "Евразия" (ООО "Буровая компания "Евразия")',20,135,NULL,NULL),
(886,'RU000A100G03','Общество с ограниченной ответственностью "Буровая компания "Евразия" (ООО "Буровая компания "Евразия")',20,135,NULL,NULL),
(887,'RU000A102952','Общество с ограниченной ответственностью "ВИС ФИНАНС"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(888,'RU000A102VK5','Общество с ограниченной ответственностью "ВИС ФИНАНС"',20,135,NULL,NULL),
(889,'RU000A102MR9','Общество с ограниченной ответственностью "ГСП-Финанс"',20,135,NULL,NULL),
(890,'RU000A0ZYUV5','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(891,'RU000A100EX8','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(892,'RU000A0ZYUW3','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(893,'RU000A100LL8','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(894,'RU000A0ZYUY9','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(895,'RU000A101QM3','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(896,'RU000A0ZYV04','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(897,'RU000A101QN1','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(898,'RU000A0JXFS8','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(899,NULL,'Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(900,'RU000A0JXFY6','Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(901,NULL,'Общество с ограниченной ответственностью "Газпром капитал"',20,135,NULL,NULL),
(902,'RU000A100P85','Общество с ограниченной ответственностью "ЕвразХолдинг Финанс"',20,135,NULL,NULL),
(903,'RU000A0ZZW77','Общество с ограниченной ответственностью "Ипотечный агент БСПБ 2"',22,135,NULL,NULL),
(904,'RU000A0JXQU1','Общество с ограниченной ответственностью "Ипотечный агент Возрождение 5"',22,135,NULL,NULL),
(905,'RU000A0JXS34','Общество с ограниченной ответственностью "КТЖ Финанс"',22,135,NULL,NULL),
(906,'RU000A1022E6','Общество с ограниченной ответственностью "Лизинговая компания Простые решения"',20,135,NULL,NULL),
(907,'RU000A0JWF22','Общество с ограниченной ответственностью "Мираторг Финанс"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(908,'RU000A0JWRH8','Общество с ограниченной ответственностью "Мираторг Финанс"',20,135,NULL,NULL),
(909,'RU000A102BK7','Общество с ограниченной ответственностью "О''КЕЙ"',20,135,NULL,NULL),
(910,'RU000A102M29','Общество с ограниченной ответственностью "Проект-Град"',20,135,NULL,NULL),
(911,'RU000A1005Y9','Общество с ограниченной ответственностью "РОЛЬФ"',20,135,NULL,NULL),
(912,'RU000A101GB7','Общество с ограниченной ответственностью "РОЛЬФ"',20,135,NULL,NULL),
(913,'RU000A101QF7','Общество с ограниченной ответственностью "Ритейл Бел Финанс"',20,135,NULL,NULL),
(914,'RU000A102TR4','Общество с ограниченной ответственностью "Ритейл Бел Финанс"',20,135,NULL,NULL),
(915,'RU000A102SG9','Общество с ограниченной ответственностью "Сеть дата-центров "Селектел"',20,135,NULL,NULL),
(916,'RU000A101XE6','Общество с ограниченной ответственностью "Совкомбанк Лизинг"',20,135,NULL,NULL),
(917,'RU000A102GW1','Общество с ограниченной ответственностью "Совкомбанк Лизинг"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(918,'RU000A102QQ2','Общество с ограниченной ответственностью "Совкомбанк Лизинг"',20,135,NULL,NULL),
(919,'RU000A1018M7','Общество с ограниченной ответственностью "Специализированное общество проектного финансирования Фабрика проектного финансирования"',22,135,NULL,NULL),
(920,'RU000A101UU8','Общество с ограниченной ответственностью "Специализированное финансовое общество "Социального развития"',22,135,NULL,NULL),
(921,'RU000A101UW4','Общество с ограниченной ответственностью "Специализированное финансовое общество "Социального развития"',22,135,NULL,NULL),
(922,'RU000A0ZYEQ9','Общество с ограниченной ответственностью "Сэтл Групп"',20,135,NULL,NULL),
(923,'RU000A100MG6','Общество с ограниченной ответственностью "Сэтл Групп"',20,135,NULL,NULL),
(924,'RU000A0JQ4Q8','Общество с ограниченной ответственностью "ТРИНФИКО Пропети Менеджмент"',15,NULL,NULL,NULL),
(1123,'RU000A0ZZGT5','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(925,'RU000A0JWU31','Общество с ограниченной ответственностью "Транспортная концессионная компания"',22,135,NULL,NULL),
(926,'RU000A0JWU23','Общество с ограниченной ответственностью "Транспортная концессионная компания"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(927,'RU000A0ZYBA9','Общество с ограниченной ответственностью "Транспортная концессионная компания"',22,135,NULL,NULL),
(928,'RU000A0ZYGF7','Общество с ограниченной ответственностью "Транспортная концессионная компания"',22,135,NULL,NULL),
(929,'RU000A0ZYGG5','Общество с ограниченной ответственностью "Транспортная концессионная компания"',22,135,NULL,NULL),
(930,'RU000A0ZZGE7','Общество с ограниченной ответственностью "Фольксваген Банк РУС"',20,135,NULL,NULL),
(931,'RU000A1003L1','Общество с ограниченной ответственностью "Фольксваген Банк РУС"',20,135,NULL,NULL),
(932,'RU000A100A41','Общество с ограниченной ответственностью "Элемент Лизинг"',20,135,NULL,NULL),
(933,'RU000A102VW0','Общество с ограниченной ответственностью "Элемент Лизинг"',20,135,NULL,NULL),
(934,'RU000A0JPPT1','Открытое акционерное общество "Межрегиональная распределительная сетевая компания Урала"',8,135,NULL,NULL),
(935,'RU000A100ZF0','Открытое акционерное общество "Межрегиональная распределительная сетевая компания Урала"',20,135,NULL,NULL),
(936,'RU000A100ZD5','Открытое акционерное общество "Межрегиональная распределительная сетевая компания Урала"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(937,'RU000A0JQTS3','Публичное  акционерное общество "Русская Аквакультура"',8,135,NULL,NULL),
(938,'RU000A102TT0','Публичное  акционерное общество "Русская Аквакультура"',20,135,NULL,NULL),
(939,'RU0009028674','Публичное акционерное общество "Акрон"',8,135,NULL,NULL),
(940,'RU000A0JRHF3','Публичное акционерное общество "Акрон"',22,135,NULL,NULL),
(941,'RU000A0JRHG1','Публичное акционерное общество "Акрон"',22,135,NULL,NULL),
(942,'RU000A0JWV89','Публичное акционерное общество "Акрон"',20,135,NULL,NULL),
(943,'RU000A0JXSS1','Публичное акционерное общество "Акрон"',20,135,NULL,NULL),
(944,'RU000A100YU2','Публичное акционерное общество "Акрон"',20,135,NULL,NULL),
(945,NULL,'Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(946,NULL,'Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(947,'RU000A0JXN21','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(948,'RU000A0ZYQY7','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(949,'RU000A0ZYWU3','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(950,'RU000A1005L6','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(951,'RU000A1008J4','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(952,'RU000A100N12','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(953,'RU000A101012','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(954,'RU000A101Q26','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(955,'RU0008081765','Публичное акционерное общество "Аптечная сеть 36,6"',8,135,NULL,NULL),
(956,'RU000A0B88G6','Публичное акционерное общество "Ашинский металлургический завод"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(957,'RU000A0HL5M1','Публичное акционерное общество "Белуга Групп"',8,135,NULL,NULL),
(958,'RU000A0JXTB5','Публичное акционерное общество "Белуга Групп"',20,135,NULL,NULL),
(959,'RU000A0JNG55','Публичное акционерное общество "Вторая генерирующая компания оптового рынка электроэнергии"',8,135,NULL,NULL),
(960,'RU000A101WR0','Публичное акционерное общество "Вторая генерирующая компания оптового рынка электроэнергии"',20,135,NULL,NULL),
(961,'RU000A102M94','Публичное акционерное общество "Вторая генерирующая компания оптового рынка электроэнергии"',20,135,NULL,NULL),
(962,'RU000A0JS5F6','Публичное акционерное общество "Вымпел-Коммуникации"',22,135,NULL,NULL),
(963,'RU000A100VQ6','Публичное акционерное общество "Горно-металлургическая компания "Норильский никель"',20,135,NULL,NULL),
(964,'RU000A0ZZ8T2','Публичное акционерное общество "Западно-Сибирский коммерческий банк"',20,135,NULL,NULL),
(965,'RU0008959580','Публичное акционерное общество "КАМАЗ"',8,135,NULL,NULL),
(966,'RU000A0ZZ7G1','Публичное акционерное общество "КАМАЗ"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(967,'RU000A0ZZ7H9','Публичное акционерное общество "КАМАЗ"',22,135,NULL,NULL),
(968,'RU000A0ZZ885','Публичное акционерное общество "КАМАЗ"',22,135,NULL,NULL),
(969,'RU000A0ZZ877','Публичное акционерное общество "КАМАЗ"',22,135,NULL,NULL),
(970,'RU000A0ZZ893','Публичное акционерное общество "КАМАЗ"',22,135,NULL,NULL),
(971,'RU000A0JVP39','Публичное акционерное общество "КАМАЗ"',22,135,NULL,NULL),
(972,'RU000A0JW126','Публичное акционерное общество "КАМАЗ"',22,135,NULL,NULL),
(973,'RU000A0JX1C5','Публичное акционерное общество "КАМАЗ"',22,135,NULL,NULL),
(974,'RU000A0JX2B5','Публичное акционерное общество "КАМАЗ"',22,135,NULL,NULL),
(975,NULL,'Публичное акционерное общество "КАМАЗ"',20,135,NULL,NULL),
(976,'RU000A101FR5','Публичное акционерное общество "КАМАЗ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(977,'RU0009177331','Публичное акционерное общество "МОСТОТРЕСТ"',8,135,NULL,NULL),
(978,'RU000A1006H2','Публичное акционерное общество "МегаФон"',20,135,NULL,NULL),
(979,'RU000A1009A1','Публичное акционерное общество "МегаФон"',20,135,NULL,NULL),
(980,'RU000A0ZYC98','Публичное акционерное общество "МегаФон"',20,135,NULL,NULL),
(981,'RU000A1002P4','Публичное акционерное общество "МегаФон"',20,135,NULL,NULL),
(982,'RU000A1006G4','Публичное акционерное общество "МегаФон"',20,135,NULL,NULL),
(983,'RU000A0JPPB9','Публичное акционерное общество "Межрегиональная распределительная сетевая компания Северо-Запада"',8,135,NULL,NULL),
(984,'RU000A0JPN96','Публичное акционерное общество "Межрегиональная распределительная сетевая компания Центра и Приволжья"',8,135,NULL,NULL),
(985,'RU000A101RF5','Публичное акционерное общество "Межрегиональная распределительная сетевая компания Центра и Приволжья"',20,135,NULL,NULL),
(986,'RU000A101459','Публичное акционерное общество "Межрегиональная распределительная сетевая компания Центра и Приволжья"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(987,'RU000A0JPPL8','Публичное акционерное общество "Межрегиональная распределительная сетевая компания Центра"',8,135,NULL,NULL),
(988,'RU000A1012N8','Публичное акционерное общество "Межрегиональная распределительная сетевая компания Центра"',20,135,NULL,NULL),
(989,'RU000A101RH1','Публичное акционерное общество "Межрегиональная распределительная сетевая компания Центра"',20,135,NULL,NULL),
(1331,'US87612E1064','Target Corporation (Таргет Корпорэйшн)',9,123,NULL,NULL),
(990,'RU000A1005H4','Публичное акционерное общество "Московская объединенная энергетическая компания"',20,135,NULL,NULL),
(991,'RU000A100AN7','Публичное акционерное общество "Московская объединенная энергетическая компания"',20,135,NULL,NULL),
(992,'RU000A101228','Публичное акционерное общество "Московская объединенная энергетическая компания"',20,135,NULL,NULL),
(993,'RU000A101XS6','Публичное акционерное общество "Московская объединенная энергетическая компания"',20,135,NULL,NULL),
(994,'RU000A101T64','Публичное акционерное общество "Нефтегазовая компания "Славнефть"',20,135,NULL,NULL),
(995,'RU000A1007H0','Публичное акционерное общество "Нефтегазовая компания "Славнефть"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(996,'RU000A1013U1','Публичное акционерное общество "Нефтегазовая компания "Славнефть"',20,135,NULL,NULL),
(997,NULL,'Публичное акционерное общество "Новолипецкий металлургический комбинат"',20,135,NULL,NULL),
(998,NULL,'Публичное акционерное общество "Новолипецкий металлургический комбинат"',20,135,NULL,NULL),
(999,'RU000A0JXKG3','Публичное акционерное общество "ОР"',8,135,NULL,NULL),
(1000,'RU000A0JWP46','Публичное акционерное общество "ПИК-специализированный застройщик"',20,135,NULL,NULL),
(1001,'RU000A100BB0','Публичное акционерное общество "РУСАЛ Братский алюминиевый завод"',20,135,NULL,NULL),
(1002,'RU000A101S81','Публичное акционерное общество "РУСАЛ Братский алюминиевый завод"',20,135,NULL,NULL),
(1003,'RU000A100KL0','Публичное акционерное общество "РУСАЛ Братский алюминиевый завод"',20,135,NULL,NULL),
(1004,'RU000A100TF3','Публичное акционерное общество "РУСАЛ Братский алюминиевый завод"',20,135,NULL,NULL),
(1005,'RU000A1011C3','Публичное акционерное общество "РУСАЛ Братский алюминиевый завод"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1006,'RU000A0B90N8','Публичное акционерное общество "Распадская"',8,135,NULL,NULL),
(1007,'RU000A0JPPN4','Публичное акционерное общество "Россети Волга"',8,135,NULL,NULL),
(1008,'RU000A101DE8','Публичное акционерное общество "Россети Ленэнерго"',20,135,NULL,NULL),
(1009,'RU000A101DF5','Публичное акционерное общество "Россети Ленэнерго"',20,135,NULL,NULL),
(1010,'RU000A0ET7Y7','Публичное акционерное общество "Россети Московский регион"',8,135,NULL,NULL),
(1011,'RU000A100AD8','Публичное акционерное общество "Россети Московский регион"',20,135,NULL,NULL),
(1012,'RU000A101FY1','Публичное акционерное общество "Россети Московский регион"',20,135,NULL,NULL),
(1013,'RU000A101XH9','Публичное акционерное общество "Россети Московский регион"',20,135,NULL,NULL),
(1014,NULL,'Публичное акционерное общество "Россети Московский регион"',20,135,NULL,NULL),
(1015,'RU000A0JXR50','Публичное акционерное общество "Россети Московский регион"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1016,'RU000A0JPPF0','Публичное акционерное общество "Россети Сибирь"',8,135,NULL,NULL),
(1017,'RU000A0JXVM8','Публичное акционерное общество "Российские сети"',20,135,NULL,NULL),
(1018,'RU000A101MG4','Публичное акционерное общество "Российские сети"',20,135,NULL,NULL),
(1019,'RU000A101YB0','Публичное акционерное общество "Российские сети"',20,135,NULL,NULL),
(1020,'RU000A101Q42','Публичное акционерное общество "СИБУР Холдинг"',20,135,NULL,NULL),
(1021,'RU000A101Q59','Публичное акционерное общество "СИБУР Холдинг"',20,135,NULL,NULL),
(1022,NULL,'Публичное акционерное общество "СИБУР Холдинг"',20,135,NULL,NULL),
(1023,'RU0006914488','Публичное акционерное общество "СОЛЛЕРС"',8,135,NULL,NULL),
(1024,'RU000A1008W7','Публичное акционерное общество "Северсталь"',20,135,NULL,NULL),
(1025,'RU000A1008L0','Публичное акционерное общество "Северсталь"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1026,'RU000A0JPR50','Публичное акционерное общество "Селигдар"',8,135,NULL,NULL),
(1027,'RU000A0JS2J5','Публичное акционерное общество "Селигдар"',10,135,NULL,NULL),
(1028,'RU0008926258','Публичное акционерное общество "Сургутнефтегаз"',8,135,NULL,NULL),
(1029,'RU0009029524','Публичное акционерное общество "Сургутнефтегаз"',10,135,NULL,NULL),
(1030,'RU000A0H1ES3','Публичное акционерное общество "Территориальная генерирующая компания № 14"',8,135,NULL,NULL),
(1031,'RU000A0JWWM8','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1032,'RU000A0JWLW0','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1033,'RU000A0JXK99','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1034,'RU000A0JXVB1','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1035,'RU000A0JUQ96','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1036,'RU000A0ZYEB1','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1332,'US88160R1014','Tesla, Inc. (Тесла, Инк.)',9,123,NULL,NULL),
(1037,'RU000A0JUR04','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1038,'RU000A0ZYFS2','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1039,'RU000A0JV9Q0','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1040,'RU000A100TS6','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1041,'RU000A0JUYC9','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1042,'RU000A0JUZZ7','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1043,'RU000A0JV4S7','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1044,'RU000A0JVHH1','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1045,'RU000A0JVPS1','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1046,'RU000A0JVS36','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1047,'RU000A0JW5B9','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1048,'RU000A0JWEG8','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1049,'RU000A0JX0U9','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(1050,'RU000A0JWK90','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(1051,'RU000A0JWMS6','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(1052,'RU000A0JWPW1','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(1053,'RU000A0JWVC1','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(1054,'RU000A0JWEB9','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1055,'RU000A0JXC24','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(1056,'RU000A101LQ5','Публичное акционерное общество "Трубная Металлургическая Компания"',20,135,NULL,NULL),
(1057,'RU000A102SC8','Публичное акционерное общество "Трубная Металлургическая Компания"',20,135,NULL,NULL),
(1058,'RU000A102TJ1','Публичное акционерное общество "Трубная Металлургическая Компания"',20,135,NULL,NULL),
(1059,'RU000A0JXPD9','Публичное акционерное общество "Трубная Металлургическая Компания"',20,135,NULL,NULL),
(1060,'RU000A0JXSF8','Публичное акционерное общество "Трубная Металлургическая Компания"',20,135,NULL,NULL),
(1061,'RU000A0ZZ9W4','Публичное акционерное общество "Уралкалий"',20,135,NULL,NULL),
(1062,'RU000A0ZZT80','Публичное акционерное общество "Уралкалий"',20,135,NULL,NULL),
(1063,'RU000A101GZ6','Публичное акционерное общество "Уралкалий"',20,135,NULL,NULL),
(1064,'RU000A0JRL96','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1065,'RU000A0JT7T2','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(1066,'RU000A0JSQ58','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(1067,'RU000A0ZYJ91','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(1068,NULL,'Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(1069,NULL,'Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(1070,NULL,'Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(1071,NULL,'Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(1072,'RU0008137070','Публичное акционерное общество "Центр международной торговли"',8,135,NULL,NULL),
(1073,'RU0008137088','Публичное акционерное общество "Центр международной торговли"',10,135,NULL,NULL),
(1074,'RU000A0JXHE4','Публичное акционерное общество "Челябинский трубопрокатный завод"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1075,'RU000A0JXME4','Публичное акционерное общество "Челябинский трубопрокатный завод"',20,135,NULL,NULL),
(1076,'RU000A0JXTY7','Публичное акционерное общество "Челябинский трубопрокатный завод"',20,135,NULL,NULL),
(1077,'RU000A101WB4','Публичное акционерное общество "Челябинский трубопрокатный завод"',20,135,NULL,NULL),
(1078,'RU000A102F85','Публичное акционерное общество "Челябинский трубопрокатный завод"',20,135,NULL,NULL),
(1079,'RU000A100824','Публичное акционерное общество "Энел Россия"',20,135,NULL,NULL),
(1080,'RU000A100840','Публичное акционерное общество "Энел Россия"',20,135,NULL,NULL),
(1081,'RU000A102B48','Публичное акционерное общество "Якутская топливно-энергетическая компания"',20,135,NULL,NULL),
(1082,'RU000A102ZH2','Публичное акционерное общество "Якутская топливно-энергетическая компания"',20,135,NULL,NULL),
(1083,'RU000A102085','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(1084,'RU000A0JU0N7','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1085,'RU000A0JRZ74','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(1086,'RU000A0JVBS1','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(1087,'RU000A0JUJG1','Публичное акционерное общество РОСБАНК',22,135,NULL,NULL),
(1088,'RU000A0JUW23','Публичное акционерное общество РОСБАНК',22,135,NULL,NULL),
(1089,'RU000A101QG5','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1090,'RU000A102F28','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1091,'RU000A100220','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1092,'RU000A100B16','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1093,'RU000A100TH9','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1094,'RU000A0JVUY9','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1095,'RU000A0JWUB5','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1096,'RU000A0JX2F6','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1097,'RU000A0JX2D1','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1098,'RU000A0JWGS8','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1099,'RU000A0JVNB2','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1100,'RU000A0JWNB0','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(1101,NULL,'Публичное акционерное общество энергетики и электрификации "Мосэнерго"',20,135,NULL,NULL),
(1102,'RU000A0JXNB8','Страховое акционерное общество "ВСК"',20,135,NULL,NULL),
(1103,NULL,'акционерное общество "Атомный энергопромышленный комплекс"',20,135,NULL,NULL),
(1104,NULL,'акционерное общество "Атомный энергопромышленный комплекс"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1105,'RU000A0JW175','акционерное общество "Атомный энергопромышленный комплекс"',20,135,NULL,NULL),
(1106,'RU000A0JV375','акционерное общество "Государственная транспортная лизинговая компания"',20,135,NULL,NULL),
(1107,'RU000A102E52','акционерное общество "Почта России"',20,135,NULL,NULL),
(1108,'RU000A101ZH4','акционерное общество "Почта России"',20,135,NULL,NULL),
(1109,'RU000A0ZYCR1','акционерное общество "ТрансКомплектХолдинг"',20,135,NULL,NULL),
(1110,'RU000A0ZZRZ9','акционерное общество "Трансмашхолдинг"',20,135,NULL,NULL),
(1111,'RU000A1009M6','акционерное общество "Трансмашхолдинг"',20,135,NULL,NULL),
(1112,'RU000A1018C8','акционерное общество "Трансмашхолдинг"',20,135,NULL,NULL),
(1113,'RU000A101PU8','акционерное общество "Трансмашхолдинг"',20,135,NULL,NULL),
(1114,'RU000A102JL8','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1115,'RU000A102UM3','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(1116,'RU000A0JQ7Z2','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(1117,'RU000A0JQRD9','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(1118,'RU000A0JTU85','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(1119,'RU000A0JUAH8','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(1120,'RU000A0JVY04','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(1121,'RU000A0ZZ4P9','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(1122,'RU000A0JWC82','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(1333,'US8825081040','Texas Instruments Incorporated (Тексас Инструментс Инкорпорэйтед)',9,123,NULL,NULL),
(1334,'US0970231058','The Boeing Company (Зе Боинг Кампани)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1335,'US1912161007','The Coca-Cola Company (Зэ Кока-Кола Кампани)',9,123,NULL,NULL),
(1336,'US3647601083','The Gap, Inc. (Зэ Гэп, Инк.)',9,123,NULL,NULL),
(1337,'US4370761029','The Home Depot, Inc. ( Зэ Хоум Депо, Инк.)',9,123,NULL,NULL),
(1338,'US5007541064','The Kraft Heinz Company (Зэ Крафт Хайнц Кампани)',9,123,NULL,NULL),
(1339,'US5010441013','The Kroger Co. (Зэ Крогер Ко.)',9,123,NULL,NULL),
(1340,'US7427181091','The Procter & Gamble Company (Зэ Проктер & Гэмбл Кампани)',9,NULL,NULL,NULL),
(1341,'US2546871060','The Walt Disney Company (Зе Уолт Дисней Кампани)',9,123,NULL,NULL),
(1342,'US8835561023','Thermo Fisher Scientific Inc. (Тэрмо Фишер Сайентифик Инк.)',9,123,NULL,NULL),
(1403,NULL,'Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL),
(1124,'RU000A0ZZRY2','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1125,'RU000A0ZZX19','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(1126,'RU000A0ZZXL7','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(1127,'RU000A1009L8','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(1128,'RU000A1010M4','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(1129,'RU000A101H84','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(1130,'RU000A101LS1','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(1131,'RU000A101M04','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(1132,'RU0009100291','публичное акционерное общество "Корпорация ВСМПО-АВИСМА"',8,135,NULL,NULL),
(1133,'RU000A0JV1W5','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1134,'RU000A0JX355','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1135,'RU000A0JV1X3','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1136,'RU000A0JX413','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1137,'RU000A0JV1Y1','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1138,'RU000A0JUCS1','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1139,'RU000A0JUCR3','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1140,'RU000A0JV201','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1141,'RU000A0JV219','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1142,'RU000A0JV235','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1143,'RU000A0JV243','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1144,'RU000A0JV250','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1145,'RU000A0JV268','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1146,'RU000A0JV227','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(1147,'RU000A1021R0','"Акционерный коммерческий банк "Держава" публичное акционерное общество"',10,135,NULL,NULL),
(1148,'RU000A0JWB59','"Акционерный коммерческий банк "Держава" публичное акционерное общество"',22,135,NULL,NULL),
(1149,'RU000A0JU0B2','"Акционерный коммерческий банк "Держава" публичное акционерное общество"',20,135,NULL,NULL),
(1150,'RU000A101ES6','"Газпромбанк" (Акционерное общество)',22,135,NULL,NULL),
(1151,'RU000A101EQ0','"Газпромбанк" (Акционерное общество)',22,30,NULL,NULL),
(1152,'RU000A101ER8','"Газпромбанк" (Акционерное общество)',22,123,NULL,NULL),
(1153,'RU000A0ZZFZ4','"Газпромбанк" (Акционерное общество)',22,135,NULL,NULL),
(1154,'RU000A101XL1','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1155,'RU000A101XM9','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1156,'RU000A1025Z4','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1157,'RU000A102606','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1158,'RU000A102F51','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1159,'RU000A102F69','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1160,'RU000A0JU7Y9','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1161,'RU000A0JUMH3','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1162,'RU000A1009G8','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1163,'RU000A0JUQ39','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1164,'RU000A0JUV08','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1165,'RU000A1010V5','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1166,'RU000A101731','"Газпромбанк" (Акционерное общество)',20,135,NULL,NULL),
(1167,'RU000A0ZZE87','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',22,135,NULL,NULL),
(1168,'RU000A101DL3','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1169,'RU000A101DK5','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1170,NULL,'"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1171,'RU000A101WY6','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1172,'RU000A101YW6','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1173,'RU000A101YX4','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1174,'RU000A102044','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1175,'RU000A102051','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1176,'RU000A1024V6','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1177,'RU000A1029V5','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1178,'RU000A102GE9','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1179,'RU000A100FF2','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1180,'RU000A100KS5','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1181,'RU000A100KT3','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1182,'RU000A100SF5','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1183,'RU000A100WT8','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1184,NULL,'"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1185,'RU000A0JV3K6','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1186,'RU000A101160','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1187,'RU000A1016Y6','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1188,'RU000A1016X8','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1189,'RU000A1016W0','"МОСКОВСКИЙ КРЕДИТНЫЙ БАНК" (публичное акционерное общество)',20,135,NULL,NULL),
(1190,'RU000A0JU6Q7','"Российский акционерный коммерческий дорожный банк" (публичное акционерное общество)',8,135,NULL,NULL),
(1191,'RU000A0ZZZ25','"Российский акционерный коммерческий дорожный банк" (публичное акционерное общество)',22,135,NULL,NULL),
(1192,NULL,'"Российский акционерный коммерческий дорожный банк" (публичное акционерное общество)',20,135,NULL,NULL),
(1193,NULL,'"Российский акционерный коммерческий дорожный банк" (публичное акционерное общество)',20,135,NULL,NULL),
(1194,NULL,'"СДМ-Банк"  (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1195,NULL,'"СДМ-Банк"  (публичное акционерное общество)',20,135,NULL,NULL),
(1196,NULL,'"СДМ-Банк"  (публичное акционерное общество)',20,135,NULL,NULL),
(1197,'US88579Y1010','3M Company (3М Кампани)',9,123,NULL,NULL),
(1198,'XS2010030919','ALROSA Finance S.A. (АЛРОСА Файнэнс Эс.Эй.)',19,123,NULL,NULL),
(1199,'XS1843441731','ALROSA Finance S.A. (АЛРОСА Файнэнс Эс.Эй.)',19,123,NULL,NULL),
(1200,'US00206R1023','AT&T Inc. (ЭйТи энд Ти Инк.)',9,123,NULL,NULL),
(1201,'US00287Y1091','AbbVie Inc. (ЭббВи Инк.)',9,123,NULL,NULL),
(1202,'US0028241000','Abbot Laboratories (Эббот Лабораториз)',9,NULL,NULL,NULL),
(1203,'US00507V1098','Activision Blizzard, Inc. (Эктивижн Близзард, Инк.)',9,123,NULL,NULL),
(1204,'US00724F1012','Adobe Inc. (Адоб Инк.)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1205,'US0079031078','Advanced Micro Devices, Inc. (Эдвансд Микро Девайсес, Инк.)',9,123,NULL,NULL),
(1206,'XS2063279959','Alfa Bond Issuance plc (Альфа Бонд Ишьюанс пиэлси)',19,123,NULL,NULL),
(1207,'XS0620695204','Alfa Bond Issuance plc (Альфа Бонд Ишьюанс пиэлси)',19,123,NULL,NULL),
(1208,'XS1513741311','Alfa Bond Issuance plc (Альфа Бонд Ишьюанс пиэлси)',19,123,NULL,NULL),
(1209,'XS2183144810','Alfa Holding Issuance plc (Альфа Холдинг Ишьюанс пиэлси)',19,30,NULL,NULL),
(1210,'US01609W1027','Alibaba Group Holding Limited (Алибаба Груп Холдинг Лимитед) (эмитент депозитарных расписок - Citibank N.A. (Ситибэнк Эн.Эй))',12,NULL,NULL,NULL),
(1211,'US02079K1079','Alphabet Inc. (Алфабет Инк.)',9,123,NULL,NULL),
(1212,'US0231351067','Amazon.com, Inc. (Амазон.ком, Инк.)',9,123,NULL,NULL),
(1213,'US02376R1023','American Airlines Group Inc. (Американ Эйрлайнз Груп Инк.)',9,123,NULL,NULL),
(1214,'US0311621009','Amgen Inc. (Амджен Инк.)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1215,'US0378331005','Apple Inc. (Эппл Инк.)',9,123,NULL,NULL),
(1216,'US0382221051','Applied Materials, Inc. (Эплайд Матириалз, Инк.)',9,123,NULL,NULL),
(1217,'US0567521085','Baidu, Inc. (Байду, Инк.) (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(1218,'US05722G1004','Baker Hughes Company (Бейкер Хьюз Кампании)',9,123,NULL,NULL),
(1219,'US0846707026','Berkshire Hathaway Inc. (Беркшир Хатауэй Инк.)',9,123,NULL,NULL),
(1220,'US09062X1037','Biogen Inc. (Биоген Инк.)',9,123,NULL,NULL),
(1221,'US09857L1089','Booking Holdings Inc. (Букинг Холдингз Инк.)',9,123,NULL,NULL),
(1222,'US1011371077','Boston Scientific Corporation (Бостон Сайентифик Корпорэйшн)',9,123,NULL,NULL),
(1223,'US1101221083','Bristol-Myers Squibb Company (Бристол-Майерс Сквибб Кампани)',9,123,NULL,NULL),
(1224,'US11135F1012','Broadcom Inc. (Бродком Инк.)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1225,'XS2281299763','CBOM Finance public limited company (СиБиОуЭм Файнэнс паблик лимитед компани)',19,30,NULL,NULL),
(1226,'XS1143363940','CBOM Finance public limited company (СиБиОуЭм Файнэнс паблик лимитед компани)',19,135,NULL,NULL),
(1227,'XS1510534677','CBOM Finance public limited company (СиБиОуЭм Файнэнс паблик лимитед компани)',19,123,NULL,NULL),
(1228,'XS1589106910','CBOM Finance public limited company (СиБиОуЭм Файнэнс паблик лимитед компани)',19,123,NULL,NULL),
(1229,'XS1951067039','CBOM Finance public limited company (СиБиОуЭм Файнэнс паблик лимитед компани)',19,30,NULL,NULL),
(1230,'XS1759801720','CBOM Finance public limited company (СиБиОуЭм Файнэнс паблик лимитед компани)',19,123,NULL,NULL),
(1231,'XS1964558339','CBOM Finance public limited company (СиБиОуЭм Файнэнс паблик лимитед компани)',19,123,NULL,NULL),
(1232,'XS2099763075','CBOM Finance public limited company (СиБиОуЭм Файнэнс паблик лимитед компани)',19,123,NULL,NULL),
(1233,'XS1601094755','CBOM Finance public limited company (СиБиОуЭм Файнэнс паблик лимитед компани)',19,123,NULL,NULL),
(1234,'US1491231015','Caterpillar Inc. (Катерпиллар Инк.)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1235,'US1667641005','Chevron Corporation (Шеврон Корпорэйшн)',9,123,NULL,NULL),
(1236,'US17275R1023','Cisco Systems, Inc. (Циско Системс, Инк.)',9,123,NULL,NULL),
(1237,'US1941621039','Colgate-Palmolive Company (Колгейт-Палмолив Кампани)',9,123,NULL,NULL),
(1238,'US20030N1019','Comcast Corporation (Комкаст Корпорэйшн)',9,123,NULL,NULL),
(1239,'US20825C1045','ConocoPhillips (КонокоФиллипс)',9,123,NULL,NULL),
(1240,'US22160K1051','Costco Wholesale Corporation (Костко Хоулсейл Корпорэйшн)',9,123,NULL,NULL),
(1241,'US26614N1028','DuPont de Nemours, Inc. (ДюПон де Немур, Инк.)',9,123,NULL,NULL),
(1242,'XS1843443273','EVRAZ plc (ЕВРАЗ пиэлси)',19,123,NULL,NULL),
(1243,'XS1405775377','EVRAZ plc (ЕВРАЗ пиэлси)',19,123,NULL,NULL),
(1244,'XS1533915721','EVRAZ plc (ЕВРАЗ пиэлси)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1245,'US2855121099','Electronic Arts Inc. (Электроник Артс Инк.)',9,123,NULL,NULL),
(1246,'US5324571083','Eli Lilly and Company (Эли Лилли энд Кампани)',9,NULL,NULL,NULL),
(1247,'US30231G1022','Exxon Mobil Corporation (Эксон Мобил Корпорэйшн)',9,NULL,NULL,NULL),
(1248,'US30303M1027','Facebook, Inc. (Фейсбук, Инк.)',9,123,NULL,NULL),
(1249,'US31428X1063','FedEx Corporation (ФедЭкс Корпорейшн)',9,123,NULL,NULL),
(1250,'US3377381088','Fiserv, Inc. (Файзёрв, Инк.)',9,123,NULL,NULL),
(1251,'US3453708600','Ford Motor Company (Форд Мотор Кампани)',9,123,NULL,NULL),
(1252,'US35671D8570','Freeport-McMoRan Inc. (Фрипорт-МакМоРан Инк.)',9,123,NULL,NULL),
(1253,'XS2249778247','GTLK Europe Capital Designated Activity Company (ГТЛК Европа Кэпитал Дезигнэйтед Активити Кампани)',19,123,NULL,NULL),
(1254,'XS1713473608','GTLK Europe Capital Designated Activity Company (ГТЛК Европа Кэпитал Дезигнэйтед Активити Кампани)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1255,'XS2010044381','GTLK Europe Capital Designated Activity Company (ГТЛК Европа Кэпитал Дезигнэйтед Активити Кампани)',19,123,NULL,NULL),
(1256,'XS2131995958','GTLK Europe Capital Designated Activity Company (ГТЛК Европа Кэпитал Дезигнэйтед Активити Кампани)',19,123,NULL,NULL),
(1257,'XS1577961516','GTLK Europe Designated Activity Company (ГТЛК Европа Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1258,'XS1449458915','GTLK Europe Designated Activity Company (ГТЛК Европа Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1259,'XS1951084471','Gaz Capital S.A. (Газ Кэпитал Эс.Эй.)',19,123,NULL,NULL),
(1260,'XS0191754729','Gaz Capital S.A. (Газ Кэпитал Эс.Эй.)',19,123,NULL,NULL),
(1261,'XS0316524130','Gaz Capital S.A. (Газ Кэпитал Эс.Эй.)',19,123,NULL,NULL),
(1262,'XS0290580595','Gaz Capital S.A. (Газ Кэпитал Эс.Эй.)',19,123,NULL,NULL),
(1263,'XS0885736925','Gaz Capital S.A. (Газ Кэпитал Эс.Эй.)',19,123,NULL,NULL),
(1264,'XS1585190389','Gaz Capital S.A. (Газ Кэпитал Эс.Эй.)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1265,'XS1721463500','Gaz Capital S.A. (Газ Кэпитал Эс.Эй.)',19,30,NULL,NULL),
(1266,'US3696041033','General Electric Company (Дженерал Электрик Кампани)',9,123,NULL,NULL),
(1267,'US37045V1008','General Motors Company (Дженерал Моторз Кампани)',9,123,NULL,NULL),
(1268,'US3755581036','Gilead Sciences, Inc. (Гилеад Сайенсиз, Инк.)',9,123,NULL,NULL),
(1269,'US40434L1052','HP Inc. (ЭйчПи Инк.)',9,123,NULL,NULL),
(1270,'US4062161017','Halliburton Company (Халлибуртон Кампани)',9,123,NULL,NULL),
(1271,'US4385161066','Honeywell International Inc. (Ханивэл Интернешнл Инк.)',9,123,NULL,NULL),
(1272,'US4523271090','Illumina, Inc. (Иллюмина, Инк.)',9,123,NULL,NULL),
(1273,'US4581401001','Intel Corporation (Интел Корпорэйшн)',9,123,NULL,NULL),
(1274,'US4592001014','International Business Machines Corporation (Интернешнл Бизнес Машинз Корпорэйшн)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1275,'US4781601046','Johnson & Johnson (Джонсон & Джонсон)',9,123,NULL,NULL),
(1276,'XS1514045886','LUKOIL International Finance B.V. (ЛУКОЙЛ Интернешнл Файнэнс Би.Ви.)',19,123,NULL,NULL),
(1277,'XS2159874002','LUKOIL Securities B.V. (ЛУКОЙЛ Секьюритиз Би.Ви.)',19,123,NULL,NULL),
(1278,'US5128071082','Lam Research Corporation (Лэм Рисёрч Корпорэйшн)',9,123,NULL,NULL),
(1279,'US5398301094','Lockheed Martin Corporation (Локхид Мартин Корпорэйшн)',9,123,NULL,NULL),
(1280,'US5486611073','Lowe''s Companies Inc. (Лоуз Кампанис Инк. )',9,123,NULL,NULL),
(1281,'XS2134628069','MMC Finance Designated Activity Company (ММК Файнэнс Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1282,'XS1298447019','MMC Finance Designated Activity Company (ММК Файнэнс Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1283,'XS1589324075','MMC Finance Designated Activity Company (ММК Файнэнс Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1284,'XS2069992258','MMC Finance Designated Activity Company (ММК Файнэнс Дезигнэйтид Активити Кампани)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1285,'XS1843434959','MMK International Capital Designated Activity Company (ММК Интернешнл Кэпитал Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1286,'XS0921331509','MTS International Funding Designated Activity Company (МТС Интернешнл Фандинг Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1287,'US55616P1049','Macy''s, Inc. (Мэйсиз, Инк.)',9,123,NULL,NULL),
(1288,'US56585A1025','Marathon Petroleum Corporation (Марафон Петролеум Корпорэйшн)',9,123,NULL,NULL),
(1289,'US57636Q1040','Mastercard Incorporated (Мастеркард Инкорпорейтед)',9,123,NULL,NULL),
(1290,'US5801351017','McDonald''s Corporation (Макдоналдс Корпорэйшн)',9,123,NULL,NULL),
(1291,'US58933Y1055','Merck & Co., Inc. (Мерк & Ко., Инк.)',9,123,NULL,NULL),
(1292,'US5951121038','Micron Technology, Inc. (Микрон Текноложди, Инк.)',9,123,NULL,NULL),
(1293,'US5949181045','Microsoft Corporation (Майкрософт Корпорэйшн)',9,123,NULL,NULL),
(1294,'US60770K1079','Moderna, Inc. (Модерна, Инк.)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1295,'US67066G1040','NVIDIA Corporation (ЭНВИДИА Корпорэйшн)',9,123,NULL,NULL),
(1296,'US64110L1061','Netflix, Inc. (Нетфликс, Инк.)',9,123,NULL,NULL),
(1297,'US6516391066','Newmont Corporation (Ньюмонт Корпорейшн)',9,123,NULL,NULL),
(1298,'US65339F1012','NextEra Energy, Inc. (НэкстЭра Энерджи, Инк.)',9,123,NULL,NULL),
(1299,'US6541061031','Nike, Inc. (Найк, Инк.)',9,NULL,NULL,NULL),
(1300,'US66987V1098','Novartis AG (Новартис АГ) (эмитент депозитарных расписок - JPMorgan Chase Bank, N.A. (ДжиПиМорган Чейз Банк, Эн.Эй))',12,NULL,NULL,NULL),
(1301,'US6745991058','Occidental Petroleum Corporation (Оксидентал Петролеум Корпорэйшн)',9,123,NULL,NULL),
(1302,'US68389X1054','Oracle Corporation (Оракл Корпорэйшн)',9,123,NULL,NULL),
(1303,'US70450Y1038','PayPal Holdings, Inc. (ПэйПал Холдингс, Инк.)',9,123,NULL,NULL),
(1304,'US71646E1001','PetroChina Company Limited (ПетроЧайна Кампани Лимитед) (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1305,'US7170811035','Pfizer Inc. (Пфайзер Инк.)',9,123,NULL,NULL),
(1306,'XS1752568144','PhosAgro Bond Funding Designated Activity Company (ФосАгро Бонд Фандинг Дезигнэйтед Активити Кампани)',19,123,NULL,NULL),
(1307,'XS1713474325','Polyus Finance Public limited company (Полюс Файнэнс Паблик лимитед кампани)',19,123,NULL,NULL),
(1308,'XS1405766384','Polyus Finance Public limited company (Полюс Файнэнс Паблик лимитед кампани)',19,123,NULL,NULL),
(1309,'XS1533922933','Polyus Finance Public limited company (Полюс Файнэнс Паблик лимитед кампани)',19,123,NULL,NULL),
(1310,'US7475251036','QUALCOMM Incorporated (Квалкомм Инкорпорейтед)',9,123,NULL,NULL),
(1311,'XS1843437036','RZD Capital Public Limited Company (РЖД Кэпитал Паблик Лимитед Кампани)',19,30,NULL,NULL),
(1312,'XS1041815116','RZD Capital Public Limited Company (РЖД Кэпитал Паблик Лимитед Кампани)',19,30,NULL,NULL),
(1313,'GB00B0D5V538','Raven Property Group Limited (Рейвен Проперти Груп Лимитед)',9,14,NULL,NULL),
(1314,'US75513E1010','Raytheon Technologies Corporation (Рэйтион Текнолоджис Корпорэйшн)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1315,'US75886F1075','Regeneron Pharmaceuticals, Inc. (Рэдженерон Фармэсьютиклс, Инк.)',9,123,NULL,NULL),
(1316,'USG76237AC37','Rolls-Royce plc (Роллс-Ройс пиэлси)',19,123,NULL,NULL),
(1317,'XS0861981180','Rosneft International Finance Designated Activity Company (Роснефть Интернэйшинал Файнэнс Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1318,'XS0743596040','SB Capital S.A. (ЭсБи Кэпитал Эс.Эй.)',19,123,NULL,NULL),
(1319,'XS1433454243','SCF CAPITAL DAC (ЭсСиЭф КЭПИТАЛ ДиЭйСи)',19,123,NULL,NULL),
(1320,'XS2199713384','SIBUR Securities Designated Activity Company (СИБУР Секьюритиз Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1321,'XS2010044621','SIBUR Securities Designated Activity Company (СИБУР Секьюритиз Дезигнэйтид Активити Кампани)',19,123,NULL,NULL),
(1322,'US81762P1021','ServiceNow, Inc. (СёрвисНау, Инк.)',9,123,NULL,NULL),
(1323,'US8356993076','Sony Group Corporation (Сони Групп Корпорэйшн) (эмитент депозитарных расписок - Citibank N.A. (Ситибэнк Эн.Эй))',12,NULL,NULL,NULL),
(1324,'US8454671095','Southwestern Energy Company (Саусвестерн Энерджи Кампани)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1325,'US8552441094','Starbucks Corporaition (Старбакс Корпорэйшн)',9,123,NULL,NULL),
(1326,'XS2046736919','Steel Capital S.A. (Стил Кэпитал Эс.Эй.)',19,123,NULL,NULL),
(1327,'XS1843435337','Steel Funding Designated Activity Company (Стил Фандинг Дезигнэйтед Активити Кампани)',19,123,NULL,NULL),
(1328,'XS1405775617','Steel Funding Designated Activity Company (Стил Фандинг Дезигнэйтед Активити Кампани)',19,123,NULL,NULL),
(1329,'US8725901040','T-Mobile US, Inc. (Ти-Мобайл ЮЭс, Инк.)',9,123,NULL,NULL),
(1330,'US8740541094','Take-Two Interactive Software, Inc. (Тэйк-Ту Интерэктив Софтвер, Инк.)',9,123,NULL,NULL),
(1343,'US8923313071','Toyota Motor Corporation (Тойота Мотор Корпорэйшн) (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(1344,'US90184L1026','Twitter, Inc. (Твиттер, Инк.)',9,123,NULL,NULL),
(1345,'US90353T1007','Uber Technolohies, Inc. (Убер Текнолоджис, Инк.)',9,123,NULL,NULL),
(1346,'US9078181081','Union Pacific Corporation (Юнион Пацифик Корпорэйшн)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1347,'US9100471096','United Airlines Holdings, Inc. (Юнайтед Эйрлайнз Холдингз, Инк.)',9,123,NULL,NULL),
(1348,'US9113121068','United Parcel Service, Inc. (Юнайтед Парсел Сёрвис, Инк.)',9,123,NULL,NULL),
(1349,'US91324P1021','UnitedHealth Group Incorporated (ЮнайтедХэлс Груп Инкорпорэйтед)',9,123,NULL,NULL),
(1350,'XS2010040397','Uralkali Finance Designated Activity Company (Уралкалий Файнэнс Дезигнэйтед Активити Кампани)',19,123,NULL,NULL),
(1351,'US92343V1044','Verizon Communications Inc. (Верайзон Коммьюникейшнз Инк.)',9,123,NULL,NULL),
(1352,'US92532F1003','Vertex Pharmaceuticals Incorporated (Вертекс Фармэсьютиклс Инкорпорэйтед)',9,123,NULL,NULL),
(1353,'US92556V1061','Viatris Inc. (Виатрис Инк.)',9,123,NULL,NULL),
(1354,'US92826C8394','Visa Inc. (Виза Инк.)',9,123,NULL,NULL),
(1355,'US9311421039','Walmart Inc. (Уолмарт, Инк.)',9,123,NULL,NULL),
(1356,'US2786421030','eBay Inc. (иБэй Инк.)',9,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1357,'US79466L3024','salesforce.com, inc. (сейлзфорс.ком, инк.)',9,123,NULL,NULL),
(1358,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',22,135,NULL,NULL),
(1359,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',22,135,NULL,NULL),
(1360,'RU000A100GW5','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',22,135,NULL,NULL),
(1361,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1362,'RU000A0ZYFE2','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,30,NULL,NULL),
(1363,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1364,'RU000A0ZZ4B9','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,123,NULL,NULL),
(1365,'RU000A0ZZG36','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,123,NULL,NULL),
(1366,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1367,'RU000A0JUU90','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1368,'RU000A0JUUA1','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1369,'RU000A0JV0U1','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1370,'RU000A0JWPV3','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1371,'RU000A0JWUX9','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1372,'RU000A0JX5W4','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1373,'RU000A0JXRV7','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1374,'RU000A0ZYBM4','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1375,'RU000A0ZYGB6','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1376,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1377,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1378,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1379,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1380,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1381,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1382,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1383,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1384,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1385,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1386,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1387,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1388,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1389,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1390,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1391,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1392,'RU000A0ZYWB3','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1393,'RU000A0ZYU21','АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1394,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1395,NULL,'АКЦИОНЕРНОЕ ОБЩЕСТВО "АЛЬФА-БАНК"',20,135,NULL,NULL),
(1396,'RU000A1026W9','АКЦИОНЕРНЫЙ КОММЕРЧЕСКИЙ БАНК "МЕТАЛЛУРГИЧЕСКИЙ ИНВЕСТИЦИОННЫЙ БАНК" (ПУБЛИЧНОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1397,'RU000A0ZZL05','АКЦИОНЕРНЫЙ КОММЕРЧЕСКИЙ БАНК "МЕТАЛЛУРГИЧЕСКИЙ ИНВЕСТИЦИОННЫЙ БАНК" (ПУБЛИЧНОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО)',20,135,NULL,NULL),
(1398,'RU000A0JWZ10','Администрация Города Томска',24,135,NULL,NULL),
(1399,'RU000A1018A2','Администрация Города Томска',24,135,NULL,NULL),
(1400,'RU000A102LR1','Администрация Города Томска',24,135,NULL,NULL),
(1401,'RU000A101PC6','Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL),
(1402,NULL,'Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL),
(1404,NULL,'Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL),
(1405,NULL,'Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL),
(1406,NULL,'Акционерная компания "АЛРОСА" (публичное акционерное общество)',20,135,NULL,NULL),
(1407,'RU000A0ZYC31','Акционерное общество "АВАНГАРД-АГРО"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1408,'RU000A0ZYH02','Акционерное общество "АВАНГАРД-АГРО"',20,135,NULL,NULL),
(1409,'RU000A0JWM49','Акционерное общество "АВТОБАН-Финанс"',22,135,NULL,NULL),
(1410,'RU000A0JXQ51','Акционерное общество "АВТОБАН-Финанс"',20,135,NULL,NULL),
(1411,'RU000A100733','Акционерное общество "АВТОБАН-Финанс"',20,135,NULL,NULL),
(1412,'RU000A0JVEZ0','Акционерное общество "Ай Кью Джи Управление Активами"',18,NULL,NULL,NULL),
(1413,'RU000A100VD4','Акционерное общество "Ай-Теко"',20,135,NULL,NULL),
(1414,'RU000A102T97','Акционерное общество "Аэрофьюэлз"',20,135,NULL,NULL),
(1415,NULL,'Акционерное общество "Банк Интеза"',20,135,NULL,NULL),
(1416,NULL,'Акционерное общество "Банк Интеза"',20,135,NULL,NULL),
(1417,'RU000A1022G1','Акционерное общество "Бизнес-Недвижимость"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1418,'RU000A0JRUY7','Акционерное общество "ВЭБ-лизинг"',22,135,NULL,NULL),
(1419,'RU000A0JRV52','Акционерное общество "ВЭБ-лизинг"',22,135,NULL,NULL),
(1420,'RU000A0JUFE4','Акционерное общество "ВЭБ-лизинг"',22,123,NULL,NULL),
(1421,'RU000A0JUFF1','Акционерное общество "ВЭБ-лизинг"',22,123,NULL,NULL),
(1422,'RU000A0JUFG9','Акционерное общество "ВЭБ-лизинг"',22,123,NULL,NULL),
(1423,'RU000A0JUFH7','Акционерное общество "ВЭБ-лизинг"',22,123,NULL,NULL),
(1424,'RU000A0JUEE7','Акционерное общество "ВЭБ-лизинг"',20,135,NULL,NULL),
(1425,'RU000A0JVNL1','Акционерное общество "ВЭБ-лизинг"',20,123,NULL,NULL),
(1426,'RU000A0JVRV1','Акционерное общество "ВЭБ-лизинг"',20,135,NULL,NULL),
(1427,'RU000A0JV8D0','Акционерное общество "ВЭБ-лизинг"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1428,'RU000A0JV8G3','Акционерное общество "ВЭБ-лизинг"',20,135,NULL,NULL),
(1429,'RU000A0JV9D8','Акционерное общество "ВЭБ-лизинг"',20,135,NULL,NULL),
(1430,'RU000A0JV9H9','Акционерное общество "ВЭБ-лизинг"',20,135,NULL,NULL),
(1431,'RU000A0JVQQ3','Акционерное общество "ВЭБ-лизинг"',20,135,NULL,NULL),
(1432,'RU000A0JW3A6','Акционерное общество "Вертолеты России"',20,135,NULL,NULL),
(1433,'RU000A0JUAT3','Акционерное общество "Вертолеты России"',20,135,NULL,NULL),
(1434,NULL,'Акционерное общество "Вертолеты России"',20,135,NULL,NULL),
(1435,'RU000A101WH1','Акционерное общество "ГИДРОМАШСЕРВИС"',20,135,NULL,NULL),
(1436,'RU000A1026H0','Акционерное общество "ГИДРОМАШСЕРВИС"',20,135,NULL,NULL),
(1437,'RU000A0ZYPM4','Акционерное общество "Газпромбанк - Управление активами"',16,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1438,'RU000A0ZZVL1','Акционерное общество "Газпромбанк - Управление активами"',16,NULL,NULL,NULL),
(1439,'RU000A0ZZVH9','Акционерное общество "Газпромбанк - Управление активами"',16,NULL,NULL,NULL),
(1440,'RU000A100X69','Акционерное общество "Группа Ренессанс Страхование"',20,135,NULL,NULL),
(1441,NULL,'Акционерное общество "Группа компаний "Пионер"',20,135,NULL,NULL),
(1442,'RU000A0ZZ547','Акционерное общество "Группа компаний "Пионер"',20,135,NULL,NULL),
(1443,'RU000A1016F5','Акционерное общество "Группа компаний "Пионер"',20,135,NULL,NULL),
(1444,'RU000A0JTZF1','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(1445,'RU000A0JUKX4','Акционерное общество "ДОМ.РФ"',22,135,NULL,NULL),
(1446,'RU000A101TS4','Акционерное общество "Джи-групп"',20,135,NULL,NULL),
(1447,'RU000A1024R4','Акционерное общество "Донской ломбард"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1448,'RU000A0JWBA7','Акционерное общество "Ипотечный агент ВТБ-БМ 2"',22,135,NULL,NULL),
(1449,'RU000A0JNK00','Акционерное общество "КапиталЪ Управление активами"',16,NULL,NULL,NULL),
(1450,'RU000A0JNK34','Акционерное общество "КапиталЪ Управление активами"',16,NULL,NULL,NULL),
(1451,'RU000A0JP4U1','Акционерное общество "КапиталЪ Управление активами"',16,NULL,NULL,NULL),
(1452,'RU000A102DZ1','Акционерное общество "Коммерческая недвижимость Финансово-промышленной корпорации "Гарант-Инвест"',20,135,NULL,NULL),
(1453,'RU000A102LS9','Акционерное общество "Коммерческая недвижимость Финансово-промышленной корпорации "Гарант-Инвест"',20,135,NULL,NULL),
(1454,'RU000A102X18','Акционерное общество "Коммерческая недвижимость Финансово-промышленной корпорации "Гарант-Инвест"',20,135,NULL,NULL),
(1455,'RU000A1005T9','Акционерное общество "Коммерческая недвижимость Финансово-промышленной корпорации "Гарант-Инвест"',20,135,NULL,NULL),
(1456,'RU000A1016U4','Акционерное общество "Коммерческая недвижимость Финансово-промышленной корпорации "Гарант-Инвест"',20,135,NULL,NULL),
(1457,'RU000A101V37','Акционерное общество "Коммерческая недвижимость Финансово-промышленной корпорации "Гарант-Инвест"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1458,'RU000A0ZYU39','Акционерное общество "Лидер-Инвест"',20,135,NULL,NULL),
(1459,'RU000A0JVQT7','Акционерное общество "Лизинговая компания "Европлан"',20,135,NULL,NULL),
(1460,NULL,'Акционерное общество "Лизинговая компания "Европлан"',20,135,NULL,NULL),
(1461,NULL,'Акционерное общество "Научно-производственная корпорация "Уралвагонзавод" имени Ф.Э. Дзержинского"',20,135,NULL,NULL),
(1462,NULL,'Акционерное общество "Научно-производственная корпорация "Уралвагонзавод" имени Ф.Э. Дзержинского"',20,135,NULL,NULL),
(1463,NULL,'Акционерное общество "Научно-производственная корпорация "Уралвагонзавод" имени Ф.Э. Дзержинского"',20,135,NULL,NULL),
(1464,NULL,'Акционерное общество "Национальный капитал"',20,135,NULL,NULL),
(1465,'RU000A0JRJV6','Акционерное общество "Независимая нефтегазовая компания"',22,135,NULL,NULL),
(1466,'RU000A0JRK22','Акционерное общество "Независимая нефтегазовая компания"',22,135,NULL,NULL),
(1467,'RU000A102036','Акционерное общество "Новосибирскхлебопродукт"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1468,'RU000A0JVUB7','Акционерное общество "О1 Пропертиз Финанс"',20,135,NULL,NULL),
(1469,'RU000A0JXC40','Акционерное общество "О1 Пропертиз Финанс"',20,123,NULL,NULL),
(1470,'RU000A0JXRB9','Акционерное общество "О1 Пропертиз Финанс"',20,123,NULL,NULL),
(1471,NULL,'Акционерное общество "ОТП Банк"',20,135,NULL,NULL),
(1472,NULL,'Акционерное общество "ОТП Банк"',20,135,NULL,NULL),
(1473,'RU000A0JWK74','Акционерное общество "Объединенная двигателестроительная корпорация"',22,135,NULL,NULL),
(1474,'RU000A0JWDA3','Акционерное общество "Объединенная двигателестроительная корпорация"',22,135,NULL,NULL),
(1475,'RU000A0JWDB1','Акционерное общество "Объединенная двигателестроительная корпорация"',22,135,NULL,NULL),
(1476,'RU000A0JS264','Акционерное общество "Открытие Холдинг"',22,135,NULL,NULL),
(1477,'RU000A0JT3J2','Акционерное общество "Открытие Холдинг"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1478,'RU000A0JTH82','Акционерное общество "Открытие Холдинг"',22,135,NULL,NULL),
(1479,'RU000A0JTX09','Акционерное общество "Открытие Холдинг"',22,135,NULL,NULL),
(1480,'RU000A0JU2N3','Акционерное общество "Открытие Холдинг"',22,135,NULL,NULL),
(1481,'RU000A0JVPJ0','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL),
(1482,'RU000A0JXTG4','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL),
(1483,'RU000A0JVDR9','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL),
(1484,'RU000A0JXYE9','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL),
(1485,'RU000A0JURM2','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL),
(1486,'RU000A0JXYG4','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL),
(1487,'RU000A0JUWV3','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1488,'RU000A0JXYH2','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL),
(1489,'RU000A0JVP21','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL),
(1490,'RU000A0JWX46','Акционерное общество "Открытие Холдинг"',20,135,NULL,NULL),
(1491,'RU000A101YV8','Акционерное общество "Позитив Текнолоджиз"',20,135,NULL,NULL),
(1492,'RU000A0JXPJ6','Акционерное общество "Полипласт"',20,135,NULL,NULL),
(1493,'RU000A0JWYK8','Акционерное общество "Полипласт"',20,135,NULL,NULL),
(1494,'RU000A100EV2','Акционерное общество "Производственное объединение "Уральский оптико-механический завод" имени Э.С. Яламова"',20,135,NULL,NULL),
(1495,'RU000A102HU3','Акционерное общество "Производственное объединение "Уральский оптико-механический завод" имени Э.С. Яламова"',20,135,NULL,NULL),
(1496,'RU000A1025E9','Акционерное общество "РЕГИОН-ПРОДУКТ"',20,135,NULL,NULL),
(1497,'RU000A101WJ7','Акционерное общество "Райффайзенбанк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1498,'RU000A101R09','Акционерное общество "Росагролизинг"',22,135,NULL,NULL),
(1499,'RU000A102TA0','Акционерное общество "Росагролизинг"',22,135,NULL,NULL),
(1500,'RU000A102HA5','Акционерное общество "Российский Банк поддержки малого и среднего предпринимательства"',22,135,NULL,NULL),
(1501,NULL,'Акционерное общество "Российский Банк поддержки малого и среднего предпринимательства"',20,135,NULL,NULL),
(1502,'RU000A101616','Акционерное общество "Российский Сельскохозяйственный банк"',22,30,NULL,NULL),
(1503,'RU000A0JVN56','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1504,'RU000A0JVN64','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1702,'RU000A1027J4','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1505,'RU000A0JVN98','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1506,'RU000A0JW1V6','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1507,'RU000A0JW1Z7','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1508,'RU000A0ZZ4T1','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1509,'RU000A0JWMZ1','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1510,'RU000A0JWN22','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1511,'RU000A0JWV63','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1512,'RU000A0ZZ505','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1513,'RU000A0ZZY59','Акционерное общество "Российский Сельскохозяйственный банк"',22,123,NULL,NULL),
(1514,'RU000A0ZZUS8','Акционерное общество "Российский Сельскохозяйственный банк"',22,135,NULL,NULL),
(1515,'RU000A102KS1','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1516,'RU000A102KV5','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1517,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1518,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1519,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1520,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1521,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1522,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1523,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1524,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1525,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1526,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1527,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1528,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1529,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1530,'RU000A102RL1','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1531,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1532,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1533,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1534,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1535,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1536,'RU000A0ZZVQ0','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1537,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1538,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1539,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1540,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1541,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1542,'RU000A101WQ2','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1543,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1544,'RU000A102713','Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1545,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1546,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1547,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1548,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,123,NULL,NULL),
(1549,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,135,NULL,NULL),
(1550,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,123,NULL,NULL),
(1551,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,123,NULL,NULL),
(1552,NULL,'Акционерное общество "Российский Сельскохозяйственный банк"',20,123,NULL,NULL),
(1553,'RU000A1006X9','Акционерное общество "СЕВЕРГАЗБАНК"',22,135,NULL,NULL),
(1554,'RU000A1006Y7','Акционерное общество "СЕВЕРГАЗБАНК"',22,135,NULL,NULL),
(1555,'RU000A1006Z4','Акционерное общество "СЕВЕРГАЗБАНК"',22,135,NULL,NULL),
(1556,'RU000A0JRKC4','Акционерное общество "Санкт-Петербург Телеком"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1557,'RU000A0JRKD2','Акционерное общество "Санкт-Петербург Телеком"',22,135,NULL,NULL),
(1558,'RU000A0JRKM3','Акционерное общество "Санкт-Петербург Телеком"',22,135,NULL,NULL),
(1559,'RU000A0JS3M7','Акционерное общество "Санкт-Петербург Телеком"',22,135,NULL,NULL),
(1560,'RU000A0JS3L9','Акционерное общество "Санкт-Петербург Телеком"',22,135,NULL,NULL),
(1561,'RU000A0JRVU3','Акционерное общество "Санкт-Петербург Телеком"',22,135,NULL,NULL),
(1562,'RU000A0ERGA7','Акционерное общество "Сбер Управление Активами"',15,NULL,NULL,NULL),
(1563,'RU000A0JX1H4','Акционерное общество "Сбер Управление Активами"',17,NULL,NULL,NULL),
(1564,'RU000A0JWAW3','Акционерное общество "Сбер Управление Активами"',15,NULL,NULL,NULL),
(1565,'RU000A0ZYC64','Акционерное общество "Сбер Управление Активами"',15,NULL,NULL,NULL),
(1566,'RU000A1002D0','Акционерное общество "Сбер Управление Активами"',17,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1567,'RU000A0ZZ5R2','Акционерное общество "Сбер Управление Активами"',15,NULL,NULL,NULL),
(1568,'RU000A1006W1','Акционерное общество "Сбер Управление Активами"',14,NULL,NULL,NULL),
(1569,'RU000A102AH5','Акционерное общество "Сбер Управление Активами"',15,NULL,NULL,NULL),
(1570,'RU000A102N44','Акционерное общество "Сбер Управление Активами"',15,NULL,NULL,NULL),
(1571,'RU000A0JU9K4','Акционерное общество "Ситиматик"',22,135,NULL,NULL),
(1572,'RU000A0JV0T3','Акционерное общество "Ситиматик"',22,135,NULL,NULL),
(1573,'RU000A0JWJF9','Акционерное общество "Ситиматик"',20,135,NULL,NULL),
(1574,'RU000A0ZZ2W9','Акционерное общество "Ситиматик"',20,135,NULL,NULL),
(1575,'RU000A0ZZZU3','Акционерное общество "СофтЛайн Трейд"',20,135,NULL,NULL),
(1576,'RU000A101LV5','Акционерное общество "СофтЛайн Трейд"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1577,'RU000A1029T9','Акционерное общество "СофтЛайн Трейд"',20,135,NULL,NULL),
(1578,'RU000A102796','Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(1579,'RU000A102FH4','Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(1580,'RU000A102FW3','Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(1581,NULL,'Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(1582,NULL,'Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(1583,NULL,'Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(1584,NULL,'Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(1585,NULL,'Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(1586,NULL,'Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1587,NULL,'Акционерное общество "Тинькофф Банк"',20,135,NULL,NULL),
(1588,'RU000A0JUYJ4','Акционерное общество "Трежери Инвест"',20,135,NULL,NULL),
(1589,'RU000A101624','Акционерное общество "Труд"',20,135,NULL,NULL),
(1590,'RU000A0JS9X1','Акционерное общество "Управление отходами – НН"',22,135,NULL,NULL),
(1591,'RU000A101UY0','Акционерное общество "Управляющая компания "МКБ Инвестиции"',17,NULL,NULL,NULL),
(1592,'RU000A0JT7G9','Акционерное общество "Управляющая компания "ТРАНСФИНГРУП"',17,NULL,NULL,NULL),
(1593,'RU000A0JPPP9','Акционерное общество "Управляющая компания "ТРАНСФИНГРУП"',15,NULL,NULL,NULL),
(1594,'RU000A0JR3X5','Акционерное общество "Управляющая компания "ТРАНСФИНГРУП"',15,NULL,NULL,NULL),
(1595,'RU000A0JX2H2','Акционерное общество "Управляющая компания "ТРАНСФИНГРУП"',17,NULL,NULL,NULL),
(1596,'RU000A0JS5B5','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1597,'RU000A0JS5A7','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',22,135,NULL,NULL),
(1598,'RU000A0JS5L4','Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',22,135,NULL,NULL),
(1599,NULL,'Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(1600,NULL,'Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(1601,NULL,'Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(1602,NULL,'Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(1603,NULL,'Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(1604,NULL,'Акционерное общество "Холдинговая компания "МЕТАЛЛОИНВЕСТ"',20,135,NULL,NULL),
(1605,'RU000A0ZYM54','Акционерное общество "Центральная пригородная пассажирская компания"',20,135,NULL,NULL),
(1606,'RU000A0ZZFH2','Акционерное общество "Центральная пригородная пассажирская компания"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1607,'RU000A0JQUQ5','Акционерное общество "Центральная трастовая компания"',15,NULL,NULL,NULL),
(1608,'RU000A0JQUP7','Акционерное общество "Центральная трастовая компания"',15,NULL,NULL,NULL),
(1609,'RU000A0JX108','Акционерное общество "ЭР-Телеком Холдинг"',20,135,NULL,NULL),
(1610,'RU000A1001L5','Акционерное общество "Южноуральский арматурно-изоляторный завод"',20,135,NULL,NULL),
(1611,'RU000A100Q92','Акционерное общество "Южноуральский арматурно-изоляторный завод"',20,135,NULL,NULL),
(1612,'RU000A1003E6','Акционерное общество АПРИ "Флай Плэнинг"',20,135,NULL,NULL),
(1613,'RU000A100K64','Акционерное общество АПРИ "Флай Плэнинг"',20,135,NULL,NULL),
(1614,'RU000A101178','Акционерное общество АПРИ "Флай Плэнинг"',20,135,NULL,NULL),
(1615,'RU000A102KR3','Акционерное общество АПРИ "Флай Плэнинг"',20,135,NULL,NULL),
(1616,'RU000A0JU0U2','Акционерное общество Банк "Национальный стандарт"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1617,'RU000A0JXJM3','Акционерное общество Банк "Северный морской путь"',22,135,NULL,NULL),
(1618,'RU000A0JXJP6','Акционерное общество Банк "Северный морской путь"',22,135,NULL,NULL),
(1619,'RU000A0JVVK6','Акционерное общество Банк "Северный морской путь"',20,135,NULL,NULL),
(1620,'RU000A0JVVP5','Акционерное общество Банк "Северный морской путь"',20,135,NULL,NULL),
(1621,'RU000A0JVVT7','Акционерное общество Банк "Северный морской путь"',20,135,NULL,NULL),
(1622,'RU000A0JR2C1','Акционерное общество ВТБ Капитал Управление активами',17,NULL,NULL,NULL),
(1623,'RU000A0JR290','Акционерное общество ВТБ Капитал Управление активами',17,NULL,NULL,NULL),
(1624,'RU000A0JR2A5','Акционерное общество ВТБ Капитал Управление активами',17,NULL,NULL,NULL),
(1625,'RU000A0JR282','Акционерное общество ВТБ Капитал Управление активами',17,NULL,NULL,NULL),
(1626,'RU000A1000Y0','Акционерное общество ВТБ Капитал Управление активами',15,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1627,'RU000A102PE0','Акционерное общество ВТБ Капитал Управление активами',16,NULL,NULL,NULL),
(1628,'RU000A102PF7','Акционерное общество ВТБ Капитал Управление активами',16,NULL,NULL,NULL),
(1629,'RU000A0JRSS3','Акционерное общество Управляющая компания "Виктори Эссет Менеджмент"',15,NULL,NULL,NULL),
(1630,'RU000A0JRST1','Акционерное общество Управляющая компания "Виктори Эссет Менеджмент"',15,NULL,NULL,NULL),
(1631,'RU000A0JRXV7','Акционерное общество Управляющая компания "Виктори Эссет Менеджмент"',15,NULL,NULL,NULL),
(1632,'RU000A0JTPA3','Акционерное общество Управляющая компания "Виктори Эссет Менеджмент"',15,NULL,NULL,NULL),
(1633,'RU000A0JU9Y5','Акционерное общество Управляющая компания "Прогрессивные инвестиционные идеи"',15,NULL,NULL,NULL),
(1634,'RU000A100YP2','Акционерное общество им. Т.Г. Шевченко',20,135,NULL,NULL),
(1635,'RU000A101P92','Акционерное общество им. Т.Г. Шевченко',20,135,NULL,NULL),
(1636,'RU000A0JVA77','Акционерное общество коммерческий банк "Солидарность"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1637,NULL,'Акционерный Коммерческий Банк "НОВИКОМБАНК" акционерное общество',20,135,NULL,NULL),
(1638,NULL,'Акционерный Коммерческий Банк "НОВИКОМБАНК" акционерное общество',20,135,NULL,NULL),
(1639,NULL,'Акционерный Коммерческий Банк "НОВИКОМБАНК" акционерное общество',20,135,NULL,NULL),
(1640,NULL,'Акционерный Коммерческий Банк "НОВИКОМБАНК" акционерное общество',20,135,NULL,NULL),
(1641,'RU000A0DM7B3','Акционерный Коммерческий банк "АВАНГАРД" - публичное акционерное общество',8,135,NULL,NULL),
(1642,'RU000A1007Q1','Акционерный Коммерческий банк "АВАНГАРД" - публичное акционерное общество',20,135,NULL,NULL),
(1643,'RU000A102KU7','Акционерный коммерческий банк "АК БАРС" (публичное акционерное общество)',20,135,NULL,NULL),
(1644,NULL,'Акционерный коммерческий банк "АК БАРС" (публичное акционерное общество)',20,135,NULL,NULL),
(1645,NULL,'Акционерный коммерческий банк "АК БАРС" (публичное акционерное общество)',20,135,NULL,NULL),
(1646,NULL,'Акционерный коммерческий банк "АК БАРС" (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1647,NULL,'Акционерный коммерческий банк "АК БАРС" (публичное акционерное общество)',20,135,NULL,NULL),
(1648,NULL,'Акционерный коммерческий банк "АК БАРС" (публичное акционерное общество)',20,135,NULL,NULL),
(1649,'RU000A0JWF71','Акционерный коммерческий банк "Абсолют Банк" (публичное акционерное общество)',22,135,NULL,NULL),
(1650,NULL,'Акционерный коммерческий банк "Абсолют Банк" (публичное акционерное общество)',20,135,NULL,NULL),
(1651,NULL,'Акционерный коммерческий банк "Абсолют Банк" (публичное акционерное общество)',20,135,NULL,NULL),
(1652,'RU000A0JXGV0','Акционерный коммерческий банк "ПЕРЕСВЕТ" (Публичное акционерное общество)',22,135,NULL,NULL),
(1653,'RU000A0JVRL2','Акционерный коммерческий банк "ПЕРЕСВЕТ" (Публичное акционерное общество)',20,135,NULL,NULL),
(1654,'RU000A0JUT85','Акционерный коммерческий банк "ПЕРЕСВЕТ" (Публичное акционерное общество)',20,135,NULL,NULL),
(1655,'RU000A0JVVL4','Акционерный коммерческий банк "ПЕРЕСВЕТ" (Публичное акционерное общество)',20,135,NULL,NULL),
(1656,'RU000A0JVM32','Акционерный коммерческий банк "ПЕРЕСВЕТ" (Публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1657,'RU000A0JVXX5','Акционерный коммерческий банк "ПЕРЕСВЕТ" (Публичное акционерное общество)',20,135,NULL,NULL),
(1658,'RU000A0JWM15','Акционерный коммерческий банк "ПЕРЕСВЕТ" (Публичное акционерное общество)',20,135,NULL,NULL),
(1659,'XS0925043100','Альянс Оил Кампани Элтиди (Alliance Oil Company Ltd.)',19,123,NULL,NULL),
(1660,'RU000A102QJ7','Банк ВТБ (публичное акционерное общество)',22,123,NULL,NULL),
(1661,'RU000A102879','Банк ВТБ (публичное акционерное общество)',22,135,NULL,NULL),
(1662,'RU000A102QL3','Банк ВТБ (публичное акционерное общество)',22,30,NULL,NULL),
(1663,'RU000A102887','Банк ВТБ (публичное акционерное общество)',22,135,NULL,NULL),
(1664,'RU000A102QM1','Банк ВТБ (публичное акционерное общество)',22,123,NULL,NULL),
(1665,'RU000A102QN9','Банк ВТБ (публичное акционерное общество)',22,30,NULL,NULL),
(1666,'RU000A1014J2','Банк ВТБ (публичное акционерное общество)',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1667,'RU000A101XW8','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1668,'RU000A101XX6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1669,'RU000A101XY4','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1670,'RU000A101XZ1','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1671,'RU000A101Y00','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1672,'RU000A101Y26','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1673,'RU000A101Y34','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1674,'RU000A101Y42','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1675,'RU000A101Y59','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1676,'RU000A101Y67','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1677,'RU000A0NH1W7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1678,'RU000A0NH1X5','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1679,'RU000A0NH1Y3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1680,'RU000A0NH1Z0','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1681,'RU000A0NH210','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1682,'RU000A0NH236','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1683,'RU000A0NH244','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1684,'RU000A0NH251','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1685,'RU000A0NH269','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1686,'RU000A0NH277','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1687,'RU000A0NH285','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1688,'RU000A0NH293','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1689,'RU000A0NH2A1','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1690,'RU000A0NH2B9','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1691,'RU000A0NH2C7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1692,'RU000A0NH2D5','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1693,'RU000A0NH2E3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1694,'RU000A0NH2F0','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1695,'RU000A102739','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1696,'RU000A102747','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1697,'RU000A102754','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1698,'RU000A102762','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1699,'RU000A1027F2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1700,'RU000A1027G0','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1701,'RU000A1027H8','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1706,'RU000A1027N6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1707,'RU000A1027P1','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1708,'RU000A1027Q9','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1709,'RU000A1027S5','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1710,'RU000A1027T3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1711,'RU000A1027U1','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1712,'RU000A1027V9','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1713,'RU000A1027W7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1714,'RU000A1027X5','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1715,'RU000A102EH7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1716,'RU000A102EJ3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1717,'RU000A102EL9','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1718,'RU000A102EN5','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1719,'RU000A102EP0','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1720,'RU000A102FA9','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1721,'RU000A102ER6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1722,'RU000A102ES4','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1723,'RU000A102EU0','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1724,'RU000A102EV8','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1725,'RU000A102EA2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1726,'RU000A102EB0','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1727,'RU000A102EC8','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1728,'RU000A102ED6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1729,'RU000A102EW6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1730,'RU000A102EX4','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1731,'RU000A102EY2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1732,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1733,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1734,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1735,'RU000A102HJ6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1736,'RU000A102HL2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1737,'RU000A102HM0','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1738,'RU000A102HN8','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1739,'RU000A102HQ1','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1740,'RU000A0NNE02','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1741,'RU000A0NNE10','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1742,'RU000A0NNE28','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1743,'RU000A0NNE36','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1744,'RU000A0NNE44','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1745,'RU000A0NNE51','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1746,'RU000A0NNE69','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1747,'RU000A0NNE77','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1748,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1749,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1750,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1751,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1752,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1753,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1754,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1755,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1756,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1757,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1758,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1759,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1760,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1761,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1762,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1765,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1766,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1767,'RU000A101KE3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1768,'RU000A101MW1','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1769,'RU000A101MY7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1770,'RU000A101NX7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1771,'RU000A101P01','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1772,'RU000A101PR4','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1773,'RU000A101PS2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1774,'RU000A101PW4','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1775,'RU000A101PX2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1776,'RU000A101S57','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1777,'RU000A101S65','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1778,'RU000A101SK3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1779,'RU000A101SL1','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1780,'RU000A101SJ5','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1781,'RU000A101SN7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1782,'RU000A101SP2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1783,'RU000A101TF1','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1784,'RU000A101TG9','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1785,'RU000A101TH7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1786,'RU000A101TJ3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1787,'RU000A101TN5','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1788,'RU000A101TM7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1789,'RU000A101V78','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1790,'RU000A101V86','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1791,'RU000A101V94','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1792,'RU000A101VA8','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1793,'RU000A101VB6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1794,'RU000A101VC4','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1795,'RU000A101VD2','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1796,'RU000A101VE0','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1797,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1798,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1799,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1800,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1801,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1802,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1803,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1804,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1805,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1806,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1807,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1808,'RU000A100EN9','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1809,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1810,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1811,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1812,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1813,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1814,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1815,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1816,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1817,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1818,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1819,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1820,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1821,NULL,'Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1822,'RU000A101491','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1823,'RU000A101F52','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1824,'RU000A101GV5','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1825,'RU000A101GX1','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1826,'RU000A101LK8','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1827,'RU000A101J90','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1828,'RU000A101JA3','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1829,'RU000A101KC7','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1830,'RU000A101LL6','Банк ВТБ (публичное акционерное общество)',20,135,NULL,NULL),
(1831,'RU000A101GG6','Банк ЗЕНИТ (публичное акционерное общество)',20,135,NULL,NULL),
(1832,'RU000A101GH4','Банк ЗЕНИТ (публичное акционерное общество)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1833,NULL,'Банк ЗЕНИТ (публичное акционерное общество)',20,135,NULL,NULL),
(1834,'RU000A1016K5','Банк ЗЕНИТ (публичное акционерное общество)',20,135,NULL,NULL),
(1835,'RU000A0JVBX1','Банк ЗЕНИТ (публичное акционерное общество)',20,135,NULL,NULL),
(1836,NULL,'Банк ЗЕНИТ (публичное акционерное общество)',20,135,NULL,NULL),
(1837,'RU000A0JUPW5','Банк ЗЕНИТ (публичное акционерное общество)',20,135,NULL,NULL),
(1838,NULL,'Банк СОЮЗ (акционерное общество)',20,135,NULL,NULL),
(1839,NULL,'Банк СОЮЗ (акционерное общество)',20,135,NULL,NULL),
(1840,NULL,'Банк СОЮЗ (акционерное общество)',20,135,NULL,NULL),
(1841,'XS2328978999','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1842,'XS1590566193','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1843,'XS1637911451','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1844,'XS1642546581','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1845,'XS1654213294','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1846,'XS1654229290','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1847,'XS1675776014','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1848,'XS1708325748','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1849,'XS1713519012','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1850,'XS1718466250','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1851,'XS1731601867','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1852,'XS1762858428','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1853,'XS1764143597','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1854,'XS1807420937','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1855,'XS1819608172','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1856,'XS1820831607','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1857,'XS1801889830','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1858,'XS1833629253','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1859,'XS1838071964','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1860,'XS1857100413','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1861,'XS1859436401','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1862,'XS1873963794','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1863,'XS1822383094','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1864,'XS1878009866','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1865,'XS1892856128','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1866,'XS1900962892','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1867,'XS1904686661','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1868,'XS1903464391','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1869,'XS1894115705','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1870,'XS1917700723','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1871,'XS1923604984','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1872,'XS1927711454','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1873,'XS1937694625','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1874,'XS1943597994','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1875,'XS1949598855','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1876,'XS1952156344','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1877,'XS1954534621','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1878,'XS1960651641','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1879,'XS1962541709','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1880,'XS1963835902','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1881,'XS1946763361','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1882,'XS1967593796','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1883,'XS1982161603','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1884,'XS1985081444','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1885,'XS1998798984','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1886,'XS2004904285','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1887,'XS2009879425','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1888,'XS2015214757','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1889,'XS2019822357','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1890,'XS2020622887','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1891,'XS2028879026','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1892,'XS2028879703','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1893,'XS2027360507','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1894,'XS2028880115','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1895,'XS2038593419','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1896,'XS2038595034','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1897,'XS2038610445','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1898,'XS2045765729','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1899,'XS2045847295','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1900,'XS2057952439','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1901,'XS2058684619','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1902,'XS2065019957','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1903,'XS2065556453','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1904,'XS2068071211','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1905,'XS2072916336','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1906,'XS2072913317','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1907,'XS2072914125','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1908,'XS2072913663','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1909,'XS2085880529','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1910,'XS2085844640','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1911,'XS2085844053','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1912,'XS2088720524','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1913,'XS2091664370','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1914,'XS2091668447','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1915,'XS2091667043','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1916,'XS2091672803','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1917,'XS2093710494','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1918,'XS2104313221','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1919,'XS2104929331','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1920,'XS2110115487','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1921,'XS2116689972','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1922,'XS2123084639','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1923,'XS2128490906','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1924,'XS2139466846','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1925,'XS2139835636','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1926,'XS2143253651','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1927,'XS2143253495','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1928,'XS2143149834','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1929,'XS2152970393','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1930,'XS2139467901','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1931,'XS2158465802','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1932,'XS2154338623','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1933,'XS2121431113','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1934,'XS2166995725','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1935,'XS2181436796','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1936,'XS2183933576','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1937,'XS2185963803','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1938,'XS2189377562','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1939,'XS2189376911','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1940,'XS2191173538','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1941,'XS2191043913','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1942,'XS2194483769','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1943,'XS2194477282','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1944,'XS2196311380','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1945,'XS2206912847','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1946,'XS2205545119','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1947,'XS2205319705','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1948,'XS2208853999','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1949,'XS2211859439','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1950,'XS2212035690','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1951,'XS2213664092','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1952,'XS2213663797','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1953,'XS2215497830','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1954,'XS2225301725','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,30,NULL,NULL),
(1955,'XS2225424303','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1956,'XS2230258035','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1957,'XS2228213471','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1958,'XS2237422972','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1959,'XS2242762651','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1960,'XS2244322322','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1961,'XS2243038663','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1962,'XS2248577566','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1963,'XS2251359084','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1964,'XS2252533075','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1965,'XS2252527424','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1966,'XS2260424580','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1967,'XS2267886971','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1968,'XS2267887946','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1969,'XS2267888597','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1970,'XS2269280066','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1971,'XS2269286345','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1972,'XS2273109871','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1973,'XS2276567604','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1974,'XS2290820518','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1975,'XS2296660454','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1976,'XS2298598462','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1977,'XS2301236753','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1978,'XS2305047339','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1979,'XS2306607271','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1980,'XS2306838595','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1981,'XS2307308069','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1982,'XS2307564653','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1983,'XS2321680998','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,135,NULL,NULL),
(1984,'XS2321534310','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1985,'XS2325702459','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1986,'XS2325565369','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1987,'XS2328381756','БрокерКредитСервис Стракчэрд Продактс ПиЭлСи (BrokerCreditService Structured Products Plc)',19,123,NULL,NULL),
(1988,'XS0810596832','ВТБ Евразия ДиЭйСи (VTB Eurasia DAC)',19,123,NULL,NULL),
(1989,'XS0893212398','ВЭБ Файнэнс пиэлси (VEB Finance plc)',19,30,NULL,NULL),
(1990,'XS0993162683','ВЭБ Файнэнс пиэлси (VEB Finance plc)',19,123,NULL,NULL),
(1991,'XS0559915961','ВЭБ Файнэнс пиэлси (VEB Finance plc)',19,123,NULL,NULL),
(1992,'XS0800817073','ВЭБ Файнэнс пиэлси (VEB Finance plc)',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(1993,'XS2196334671','Газ Файнэнс ПиЭлСи (Gaz Finance Plc)',19,123,NULL,NULL),
(1994,'XS2124187571','Газ Файнэнс ПиЭлСи (Gaz Finance Plc)',19,123,NULL,NULL),
(1995,'XS2157526315','Газ Файнэнс ПиЭлСи (Gaz Finance Plc)',19,30,NULL,NULL),
(1996,'RU000A100PB0','Государственное унитарное предприятие "Жилищно-коммунальное хозяйство Республики Саха (Якутия)"',20,135,NULL,NULL),
(1997,'RU000A0JX2M2','Государственный специализированный Российский экспортно-импортный банк (акционерное общество)',20,123,NULL,NULL),
(1998,'XS0830192711','ДжиПиЭн Кэпитал Эс.Эй. (GPN Capital S.A.)',19,123,NULL,NULL),
(1999,'XS0997544860','ДжиПиЭн Кэпитал Эс.Эй. (GPN Capital S.A.)',19,123,NULL,NULL),
(2000,'XS1961080501','ЕвроХим Файнэнс Дезигнэйтид Активити Кампани (EuroChem Finance Designated Activity Company)',19,123,NULL,NULL),
(2001,'RU000A0JUD34','Закрытое акционерное общество "Восточно - Сибирский ипотечный агент 2012"',22,135,NULL,NULL),
(2002,'RU000A0JS1A6','Закрытое акционерное общество "Ипотечный агент АИЖК 2011-1"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2003,'RU000A0JS1B4','Закрытое акционерное общество "Ипотечный агент АИЖК 2011-1"',22,135,NULL,NULL),
(2004,'RU000A0JTCV7','Закрытое акционерное общество "Ипотечный агент АИЖК 2011-1"',22,135,NULL,NULL),
(2005,'RU000A0JTD52','Закрытое акционерное общество "Ипотечный агент АИЖК 2011-1"',22,135,NULL,NULL),
(2006,'RU000A0JUBT1','Закрытое акционерное общество "Ипотечный агент АИЖК 2011-1"',22,135,NULL,NULL),
(2007,'RU000A0JUC19','Закрытое акционерное общество "Ипотечный агент АИЖК 2011-1"',22,135,NULL,NULL),
(2008,'RU000A0JU3J9','Закрытое акционерное общество "Ипотечный агент АИЖК 2013-1"',22,135,NULL,NULL),
(2009,'RU000A0JUJ87','Закрытое акционерное общество "Ипотечный агент АИЖК 2014-1"',22,135,NULL,NULL),
(2010,'RU000A0JV755','Закрытое акционерное общество "Ипотечный агент АИЖК 2014-2"',22,135,NULL,NULL),
(2011,'RU000A0JV1C7','Закрытое акционерное общество "Ипотечный агент АИЖК 2014-3"',22,135,NULL,NULL),
(2012,'RU000A0JV1B9','Закрытое акционерное общество "Ипотечный агент АИЖК 2014-3"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2013,'RU000A0JV508','Закрытое акционерное общество "Ипотечный агент ТФБ1"',22,135,NULL,NULL),
(2014,'RU000A0JV169','Закрытое акционерное общество "Ипотечный агент ХМБ-2"',22,135,NULL,NULL),
(2015,'RU000A0JV185','Закрытое акционерное общество "Ипотечный агент ХМБ-2"',22,135,NULL,NULL),
(2016,'RU000A0JX2L4','Закрытое акционерное общество "КРАУС-М"',20,135,NULL,NULL),
(2017,'RU000A100LE3','Закрытое акционерное общество "Ламбумиз"',20,135,NULL,NULL),
(2018,'RU000A0JVB35','Закрытое акционерное общество "Мультиоригинаторный ипотечный агент 1"',22,135,NULL,NULL),
(2019,'RU000A0JWF30','Закрытое акционерное общество "Мультиоригинаторный ипотечный агент 1"',22,135,NULL,NULL),
(2020,'RU000A0JUCX1','Закрытое акционерное общество "Первый Санкт-Петербургский ипотечный агент"',22,135,NULL,NULL),
(2021,'RU000A100W52','Закрытое акционерное общество "СуперОкс"',20,135,NULL,NULL),
(2022,'RU000A100790','Закрытое акционерное общество "ТРИНФИКО Холдингс"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2023,'RU000A0ZZV52','Закрытое акционерное общество Лизинговая компания "Роделен"',20,135,NULL,NULL),
(2024,'RU000A100W29','Закрытое акционерное общество Лизинговая компания "Роделен"',20,135,NULL,NULL),
(2025,'RU000A0JPCF8','Закрытое акционерное общество Управляющая компания "РВМ Капитал"',15,NULL,NULL,NULL),
(2026,'RU000A0JPJ35','Закрытое акционерное общество Управляющая компания "РВМ Капитал"',15,NULL,NULL,NULL),
(2027,'RU000A0JUKK1','Закрытое акционерное общество Управляющая компания "РВМ Капитал"',15,NULL,NULL,NULL),
(2028,'RU0008960828','Иркутское публичное акционерное общество энергетики и электрификации',8,135,NULL,NULL),
(2029,NULL,'Иркутское публичное акционерное общество энергетики и электрификации',20,135,NULL,NULL),
(2030,'RU0009089825','Казанское публичное акционерное общество "Органический синтез"',8,135,NULL,NULL),
(2031,'RU0006753456','Казанское публичное акционерное общество "Органический синтез"',10,135,NULL,NULL),
(2032,NULL,'Коммерческий банк "Ренессанс Кредит" (Общество с ограниченной ответственностью)',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2033,'RU000A102H83','Коммерческий банк "Ренессанс Кредит" (Общество с ограниченной ответственностью)',20,135,NULL,NULL),
(2034,'RU000A102RN7','Коммерческий банк "Ренессанс Кредит" (Общество с ограниченной ответственностью)',20,135,NULL,NULL),
(2035,NULL,'Коммерческий банк "Ренессанс Кредит" (Общество с ограниченной ответственностью)',20,135,NULL,NULL),
(2036,'RU000A0JP1N2','Ленское золотодобывающее публичное акционерное общество "Лензолото"',8,135,NULL,NULL),
(2037,'RU000A0JP1P7','Ленское золотодобывающее публичное акционерное общество "Лензолото"',10,135,NULL,NULL),
(2038,'RU000A1023H7','МЕЖДУНАРОДНЫЙ ИНВЕСТИЦИОННЫЙ БАНК',19,135,NULL,NULL),
(2039,'RU000A0JUG56','МЕЖДУНАРОДНЫЙ ИНВЕСТИЦИОННЫЙ БАНК',19,135,NULL,NULL),
(2040,'RU000A0JUG98','МЕЖДУНАРОДНЫЙ ИНВЕСТИЦИОННЫЙ БАНК',19,135,NULL,NULL),
(2041,'RU000A0JUG72','МЕЖДУНАРОДНЫЙ ИНВЕСТИЦИОННЫЙ БАНК',19,135,NULL,NULL),
(2042,'RU000A0JXT58','МЕЖДУНАРОДНЫЙ ИНВЕСТИЦИОННЫЙ БАНК',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2043,'RU000A101LM4','МЕЖДУНАРОДНЫЙ ИНВЕСТИЦИОННЫЙ БАНК',19,135,NULL,NULL),
(2044,'RU000A101LN2','МЕЖДУНАРОДНЫЙ ИНВЕСТИЦИОННЫЙ БАНК',19,135,NULL,NULL),
(2045,'RU000A101MZ4','МЕЖДУНАРОДНЫЙ ИНВЕСТИЦИОННЫЙ БАНК',19,135,NULL,NULL),
(2046,'RU000A101RJ7','Международный Банк Экономического Сотрудничества',19,135,NULL,NULL),
(2047,'RU000A100VX2','Международный Банк Экономического Сотрудничества',20,135,NULL,NULL),
(2048,NULL,'Микрофинансовая компания "Быстроденьги" (Общество с ограниченной ответственностью)',22,135,NULL,NULL),
(2049,'RU000A101483','Микрофинансовая компания "Быстроденьги" (Общество с ограниченной ответственностью)',20,135,NULL,NULL),
(2050,'RU000A0ZYL48','Министерство финансов Магаданской области',21,135,NULL,NULL),
(2051,'RU000A0ZYCZ4','Министерство финансов Республики Карелия',21,135,NULL,NULL),
(2052,'RU000A0ZZZV1','Министерство финансов Республики Карелия',21,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2053,'RU000A0JWSQ7','Министерство финансов Республики Мордовия',21,135,NULL,NULL),
(2054,'RU000A0JWXQ7','Министерство финансов Республики Хакасия',21,135,NULL,NULL),
(2055,'RU000A0ZZQQ0','Министерство финансов Хабаровского края',21,135,NULL,NULL),
(2056,'RU000A0JWWG0','Непубличное акционерное общество "Первое коллекторское бюро"',20,135,NULL,NULL),
(2057,'RU000A1020S0','Непубличное акционерное общество "Первое коллекторское бюро"',20,135,NULL,NULL),
(2058,'XS0864383723','Новатэк Файнэнс ДиЭйСи (Novatek Finance DAC)',19,123,NULL,NULL),
(2059,'RU000A102KP7','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ ПРОИЗВОДСТВЕННАЯ КОМПАНИЯ "СМАК"',20,135,NULL,NULL),
(2060,'RU000A1018U0','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ СПЕЦИАЛИЗИРОВАННЫЙ ЗАСТРОЙЩИК "ИНВЕСТИЦИОННАЯ СТРОИТЕЛЬНАЯ КОМПАНИЯ "ЭНКО"',20,135,NULL,NULL),
(2061,'AMUNIBB2AER2','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО "ЮНИБАНК"',19,123,NULL,NULL),
(2062,'RU000A100VS2','Общество с ограниченной ответственностью  "Атомстройкомплекс-Строительство"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2063,'RU000A102VY6','Общество с ограниченной ответственностью  "Атомстройкомплекс-Строительство"',20,135,NULL,NULL),
(2064,'RU000A0ZZAU6','Общество с ограниченной ответственностью "АКЦЕНТ УПРАВЛЕНИЕ АКТИВАМИ"',15,NULL,NULL,NULL),
(2065,'RU000A0JXQQ9','Общество с ограниченной ответственностью "АРАГОН"',22,135,NULL,NULL),
(2066,'RU000A1007U3','Общество с ограниченной ответственностью "АРАГОН"',20,135,NULL,NULL),
(2067,'RU000A100ME1','Общество с ограниченной ответственностью "АРАГОН"',20,135,NULL,NULL),
(2068,'RU000A0ZZYF7','Общество с ограниченной ответственностью "АС ФИНАНС"',20,135,NULL,NULL),
(2069,'RU000A0JWA92','Общество с ограниченной ответственностью "Авенир"',22,123,NULL,NULL),
(2070,'RU000A101YQ8','Общество с ограниченной ответственностью "Агронова-Л"',20,135,NULL,NULL),
(2071,'RU000A100K31','Общество с ограниченной ответственностью "Агрофирма "Рубеж"',20,135,NULL,NULL),
(2072,'RU000A0JUJW8','Общество с ограниченной ответственностью "Арчер Финанс"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2073,'RU000A0JV3U5','Общество с ограниченной ответственностью "БКЗ финанс"',22,135,NULL,NULL),
(2074,'RU000A100535','Общество с ограниченной ответственностью "БЭЛТИ-ГРАНД"',20,135,NULL,NULL),
(2075,'RU000A100TT4','Общество с ограниченной ответственностью "БЭЛТИ-ГРАНД"',20,135,NULL,NULL),
(2076,'RU000A102GC3','Общество с ограниченной ответственностью "БЭЛТИ-ГРАНД"',20,135,NULL,NULL),
(2077,'RU000A0JV3T7','Общество с ограниченной ответственностью "Бизнес Консалтинг"',22,135,NULL,NULL),
(2078,'RU000A102SK1','Общество с ограниченной ответственностью "Боржоми Финанс"',20,135,NULL,NULL),
(2079,'RU000A100725','Общество с ограниченной ответственностью "Брайт Финанс"',20,135,NULL,NULL),
(2080,'RU000A101HU5','Общество с ограниченной ответственностью "Брусника. Строительство и девелопмент"',20,135,NULL,NULL),
(2081,'RU000A102Y58','Общество с ограниченной ответственностью "Брусника. Строительство и девелопмент"',20,135,NULL,NULL),
(2082,'RU000A0JRHC0','Общество с ограниченной ответственностью "ВЕЛЕС ТРАСТ"',15,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2083,'RU000A0JUHV4','Общество с ограниченной ответственностью "Вейл Финанс"',22,135,NULL,NULL),
(2084,'RU000A101DU4','Общество с ограниченной ответственностью "Вита Лайн"',20,135,NULL,NULL),
(2085,'RU000A102200','Общество с ограниченной ответственностью "Вита Лайн"',20,135,NULL,NULL),
(2086,'RU000A102B97','Общество с ограниченной ответственностью "Вита Лайн"',20,135,NULL,NULL),
(2087,'RU000A102G50','Общество с ограниченной ответственностью "Восточная Стивидорная Компания"',20,135,NULL,NULL),
(2088,'RU000A0ZZXT0','Общество с ограниченной ответственностью "ВсеИнструменты.ру"',20,135,NULL,NULL),
(2089,'RU000A101970','Общество с ограниченной ответственностью "ВсеИнструменты.ру"',20,135,NULL,NULL),
(2090,'RU000A102M86','Общество с ограниченной ответственностью "ВсеИнструменты.ру"',20,135,NULL,NULL),
(2091,'RU000A102KZ6','Общество с ограниченной ответственностью "ГСП-Финанс"',22,135,NULL,NULL),
(2092,'RU000A102MA5','Общество с ограниченной ответственностью "ГСП-Финанс"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2093,NULL,'Общество с ограниченной ответственностью "ГТЛК- 1520"',20,135,NULL,NULL),
(2094,'RU000A101D54','Общество с ограниченной ответственностью "ГТЛК- 1520"',20,135,NULL,NULL),
(2095,'RU000A100HE1','Общество с ограниченной ответственностью "Городской супермаркет"',20,135,NULL,NULL),
(2096,'RU000A102580','Общество с ограниченной ответственностью "Группа "Продовольствие"',20,135,NULL,NULL),
(2097,'RU000A0JXP78','Общество с ограниченной ответственностью "ДОМ.РФ Управление активами"',15,NULL,NULL,NULL),
(2098,'RU000A0ZYM21','Общество с ограниченной ответственностью "ДОМОДЕДОВО ФЬЮЭЛ ФАСИЛИТИС"',20,135,NULL,NULL),
(2099,'RU000A100J18','Общество с ограниченной ответственностью "ДОМОДЕДОВО ФЬЮЭЛ ФАСИЛИТИС"',20,135,NULL,NULL),
(2100,'RU000A100M47','Общество с ограниченной ответственностью "ДЭНИ КОЛЛ"',20,135,NULL,NULL),
(2101,'RU000A0JVZB6','Общество с ограниченной ответственностью "ДелоПортс"',22,135,NULL,NULL),
(2102,'RU000A0JXVG0','Общество с ограниченной ответственностью "ДелоПортс"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2103,'RU000A0ZZ2A5','Общество с ограниченной ответственностью "ДелоПортс"',20,123,NULL,NULL),
(2104,'RU000A0ZYU54','Общество с ограниченной ответственностью "Держава-Платформа"',20,135,NULL,NULL),
(2105,'RU000A0ZZNL8','Общество с ограниченной ответственностью "Держава-Платформа"',20,135,NULL,NULL),
(2106,'RU000A0ZZS73','Общество с ограниченной ответственностью "Держава-Платформа"',20,135,NULL,NULL),
(2107,'RU000A0ZZR90','Общество с ограниченной ответственностью "ДиректЛизинг"',20,135,NULL,NULL),
(2108,'RU000A100Z00','Общество с ограниченной ответственностью "ДиректЛизинг"',20,135,NULL,NULL),
(2109,'RU000A101ZF8','Общество с ограниченной ответственностью "ДиректЛизинг"',20,135,NULL,NULL),
(2110,'RU000A102M45','Общество с ограниченной ответственностью "ДиректЛизинг"',20,135,NULL,NULL),
(2111,'RU000A0ZZ7R8','Общество с ограниченной ответственностью "Дядя Дёнер"',20,135,NULL,NULL),
(2112,'RU000A101HQ3','Общество с ограниченной ответственностью "Дядя Дёнер"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2113,'RU000A1018L9','Общество с ограниченной ответственностью "Завод КриалЭнергоСтрой"',20,135,NULL,NULL),
(2114,'RU000A102AB8','Общество с ограниченной ответственностью "Завод КриалЭнергоСтрой"',20,135,NULL,NULL),
(2115,'RU000A0JURT7','Общество с ограниченной ответственностью "ИНВЕКТОР"',22,135,NULL,NULL),
(2116,'RU000A100UP0','Общество с ограниченной ответственностью "ИТЦ-Трейд"',20,135,NULL,NULL),
(2117,'RU000A102AK9','Общество с ограниченной ответственностью "Инновационная  Технологическая Компания "Оптима"',20,135,NULL,NULL),
(2118,'RU000A102B30','Общество с ограниченной ответственностью "Интерлизинг"',20,135,NULL,NULL),
(2119,'RU000A101ZU7','Общество с ограниченной ответственностью "Ипотечный агент Абсолют 5"',22,135,NULL,NULL),
(2120,'RU000A102MB3','Общество с ограниченной ответственностью "Ипотечный агент Титан-3"',20,135,NULL,NULL),
(2121,'RU000A102MC1','Общество с ограниченной ответственностью "Ипотечный агент Титан-3"',20,135,NULL,NULL),
(2122,'RU000A102ME7','Общество с ограниченной ответственностью "Ипотечный агент Титан-3"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2123,'RU000A1013C9','Общество с ограниченной ответственностью "Ист Сайбериан петролеум"',20,135,NULL,NULL),
(2124,'RU000A1028C7','Общество с ограниченной ответственностью "КИВИ Финанс"',20,135,NULL,NULL),
(2125,'RU000A100FZ0','Общество с ограниченной ответственностью "КИСТОЧКИ Финанс"',20,135,NULL,NULL),
(2126,'RU000A101KJ2','Общество с ограниченной ответственностью "Калита"',20,135,NULL,NULL),
(2127,'RU000A1023L9','Общество с ограниченной ответственностью "Калита"',20,135,NULL,NULL),
(2128,'RU000A100Q76','Общество с ограниченной ответственностью "Каскад"',20,135,NULL,NULL),
(2129,'RU000A0JWJQ6','Общество с ограниченной ответственностью "Компания специального назначения "Структурные инвестиции 1"',22,135,NULL,NULL),
(2130,'RU000A0JVT43','Общество с ограниченной ответственностью "Концерн "РОССИУМ"',22,135,NULL,NULL),
(2131,'RU000A0JVZA8','Общество с ограниченной ответственностью "Концерн "РОССИУМ"',20,135,NULL,NULL),
(2132,'RU000A0ZZCX6','Общество с ограниченной ответственностью "Концерн "РОССИУМ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2133,'RU000A102192','Общество с ограниченной ответственностью "Концерн "РОССИУМ"',20,135,NULL,NULL),
(2134,'RU000A0ZZZY5','Общество с ограниченной ответственностью "Концерн "РОССИУМ"',20,135,NULL,NULL),
(2135,'RU000A1021A6','Общество с ограниченной ответственностью "Концерн "РОССИУМ"',20,135,NULL,NULL),
(2136,'RU000A1018N5','Общество с ограниченной ответственностью "Концерн "РОССИУМ"',20,135,NULL,NULL),
(2137,'RU000A102HX7','Общество с ограниченной ответственностью "Концерн "РОССИУМ"',20,135,NULL,NULL),
(2138,'RU000A0ZZWQ8','Общество с ограниченной ответственностью "Концессии водоснабжения - Саратов"',22,135,NULL,NULL),
(2139,'RU000A1018G9','Общество с ограниченной ответственностью "Концессии водоснабжения - Саратов"',20,135,NULL,NULL),
(2140,'RU000A0JVZJ9','Общество с ограниченной ответственностью "Концессии водоснабжения"',22,135,NULL,NULL),
(2141,'RU000A0JWGW0','Общество с ограниченной ответственностью "Концессии водоснабжения"',22,135,NULL,NULL),
(2142,'RU000A0JWVB3','Общество с ограниченной ответственностью "Концессии водоснабжения"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2143,'RU000A0JXP29','Общество с ограниченной ответственностью "Концессии водоснабжения"',22,135,NULL,NULL),
(2144,'RU000A0ZYHU4','Общество с ограниченной ответственностью "Концессии водоснабжения"',22,135,NULL,NULL),
(2145,NULL,'Общество с ограниченной ответственностью "Концессии водоснабжения"',20,135,NULL,NULL),
(2146,'RU000A0JXN62','Общество с ограниченной ответственностью "Концессии теплоснабжения"',22,135,NULL,NULL),
(2147,'RU000A0ZYH51','Общество с ограниченной ответственностью "Концессии теплоснабжения"',22,135,NULL,NULL),
(2148,'RU000A0ZZR58','Общество с ограниченной ответственностью "Концессии теплоснабжения"',22,135,NULL,NULL),
(2149,'RU000A100EM1','Общество с ограниченной ответственностью "Концессии теплоснабжения"',22,135,NULL,NULL),
(2150,'RU000A1015D2','Общество с ограниченной ответственностью "Концессии теплоснабжения"',20,135,NULL,NULL),
(2151,'RU000A100FY3','Общество с ограниченной ответственностью "Круиз"',20,135,NULL,NULL),
(2152,'RU000A101K30','Общество с ограниченной ответственностью "Круиз"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2153,'RU000A100TL1','Общество с ограниченной ответственностью "Кузина"',20,135,NULL,NULL),
(2154,'RU000A0ZZCV0','Общество с ограниченной ответственностью "ЛЕГЕНДА"',20,135,NULL,NULL),
(2155,'RU000A101GW3','Общество с ограниченной ответственностью "ЛЕГЕНДА"',20,135,NULL,NULL),
(2156,'RU000A101YD6','Общество с ограниченной ответственностью "ЛЕГЕНДА"',20,135,NULL,NULL),
(2157,'RU000A102Y66','Общество с ограниченной ответственностью "ЛЕГЕНДА"',20,135,NULL,NULL),
(2158,'RU000A102QX8','Общество с ограниченной ответственностью "ЛайфСтрим"',20,135,NULL,NULL),
(2159,NULL,'Общество с ограниченной ответственностью "Лесные технологии"',20,135,NULL,NULL),
(2160,'RU000A101CB6','Общество с ограниченной ответственностью "Лизинг-Трейд"',20,135,NULL,NULL),
(2161,'RU000A1029F8','Общество с ограниченной ответственностью "Лизинг-Трейд"',20,135,NULL,NULL),
(2162,'RU000A0ZZFP5','Общество с ограниченной ответственностью "Лизинговая компания Простые решения"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2163,'RU000A0ZZX35','Общество с ограниченной ответственностью "Лизинговая компания Простые решения"',20,135,NULL,NULL),
(2164,'RU000A100Q35','Общество с ограниченной ответственностью "Лизинговая компания Простые решения"',20,135,NULL,NULL),
(2165,'RU000A0ZZUR0','Общество с ограниченной ответственностью "МСБ-Лизинг"',20,135,NULL,NULL),
(2166,'RU000A100DC4','Общество с ограниченной ответственностью "МСБ-Лизинг"',20,135,NULL,NULL),
(2167,'RU000A1028N4','Общество с ограниченной ответственностью "МСБ-Лизинг"',20,135,NULL,NULL),
(2168,'RU000A102SN5','Общество с ограниченной ответственностью "МСБ-Лизинг"',20,135,NULL,NULL),
(2169,NULL,'Общество с ограниченной ответственностью "Маяк"',20,135,NULL,NULL),
(2215,'RU000A1021G3','Общество с ограниченной ответственностью "РВК-Инвест"',20,135,NULL,NULL),
(2170,'RU000A0JWAT9','Общество с ограниченной ответственностью "Мультиоригинаторный ипотечный агент 2"',22,135,NULL,NULL),
(2171,'RU000A0JQ5C5','Общество с ограниченной ответственностью "Недвижимость пенсионного фонда"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2172,'RU000A1004Z9','Общество с ограниченной ответственностью "Новосибирский Завод Резки Металла"',20,135,NULL,NULL),
(2173,NULL,'Общество с ограниченной ответственностью "О''КЕЙ"',20,135,NULL,NULL),
(2174,'RU000A0JXQH8','Общество с ограниченной ответственностью "О''КЕЙ"',20,135,NULL,NULL),
(2175,NULL,'Общество с ограниченной ответственностью "О''КЕЙ"',20,135,NULL,NULL),
(2176,'RU000A1009Z8','Общество с ограниченной ответственностью "О''КЕЙ"',20,135,NULL,NULL),
(2177,NULL,'Общество с ограниченной ответственностью "О''КЕЙ"',20,135,NULL,NULL),
(2178,'RU000A1014B9','Общество с ограниченной ответственностью "О''КЕЙ"',20,135,NULL,NULL),
(2179,'RU000A0JUBD5','Общество с ограниченной ответственностью "ОВК Финанс"',22,135,NULL,NULL),
(2180,'RU000A0JUU25','Общество с ограниченной ответственностью "ОВК Финанс"',20,135,NULL,NULL),
(2181,'RU000A0JWGY6','Общество с ограниченной ответственностью "ОВК Финанс"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2182,'RU000A100V61','Общество с ограниченной ответственностью "ОР"',20,135,NULL,NULL),
(2183,'RU000A1015P6','Общество с ограниченной ответственностью "ОР"',20,135,NULL,NULL),
(2184,'RU000A1021B4','Общество с ограниченной ответственностью "ОР"',20,135,NULL,NULL),
(2185,'RU000A102NK2','Общество с ограниченной ответственностью "ОР"',20,135,NULL,NULL),
(2186,'RU000A0JX8E6','Общество с ограниченной ответственностью "ОР"',20,135,NULL,NULL),
(2187,'RU000A0ZZWJ3','Общество с ограниченной ответственностью "ОбъединениеАгроЭлита"',20,135,NULL,NULL),
(2188,'RU000A0ZZYP6','Общество с ограниченной ответственностью "ОбъединениеАгроЭлита"',20,135,NULL,NULL),
(2189,'RU000A100CG7','Общество с ограниченной ответственностью "ОбъединениеАгроЭлита"',20,135,NULL,NULL),
(2190,'RU000A0JR7Y4','Общество с ограниченной ответственностью "Объединенная управляющая компания"',15,NULL,NULL,NULL),
(2191,'RU000A0JTQH6','Общество с ограниченной ответственностью "Объединенная управляющая компания"',15,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2192,'RU000A0JR7V0','Общество с ограниченной ответственностью "Объединенная управляющая компания"',15,NULL,NULL,NULL),
(2193,'RU000A0JR7W8','Общество с ограниченной ответственностью "Объединенная управляющая компания"',15,NULL,NULL,NULL),
(2194,'RU000A0JTV50','Общество с ограниченной ответственностью "Объединенные кондитеры - Финанс"',20,135,NULL,NULL),
(2195,NULL,'Общество с ограниченной ответственностью "Объединенные кондитеры - Финанс"',20,135,NULL,NULL),
(2196,NULL,'Общество с ограниченной ответственностью "Объединенные кондитеры - Финанс"',20,135,NULL,NULL),
(2197,'RU000A102CZ3','Общество с ограниченной ответственностью "Онлайн Микрофинанс"',22,135,NULL,NULL),
(2198,'RU000A100CT0','Общество с ограниченной ответственностью "Онлайн Микрофинанс"',20,135,NULL,NULL),
(2199,'RU000A101JF2','Общество с ограниченной ответственностью "Онлайн Микрофинанс"',20,135,NULL,NULL),
(2200,'RU000A102HG2','Общество с ограниченной ответственностью "Охта Групп"',20,135,NULL,NULL),
(2201,'RU000A0JUR61','Общество с ограниченной ответственностью "ПЕРАМО ИНВЕСТ"',16,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2202,'RU000A100XR0','Общество с ограниченной ответственностью "ПИК-Корпорация"',20,135,NULL,NULL),
(2203,'RU000A1016Z3','Общество с ограниченной ответственностью "ПИК-Корпорация"',20,135,NULL,NULL),
(2204,'RU000A1026C1','Общество с ограниченной ответственностью "ПИК-Корпорация"',20,135,NULL,NULL),
(2205,'RU000A102LB5','Общество с ограниченной ответственностью "ПРОМОМЕД ДМ"',20,135,NULL,NULL),
(2206,'RU000A0ZZ8A2','Общество с ограниченной ответственностью "Первый ювелирный – драгоценные металлы"',20,135,NULL,NULL),
(2207,'RU000A1020K7','Общество с ограниченной ответственностью "Первый ювелирный – драгоценные металлы"',20,135,NULL,NULL),
(2208,'RU000A0ZZAT8','Общество с ограниченной ответственностью "Пионер-Лизинг"',20,135,NULL,NULL),
(2209,'RU000A1006C3','Общество с ограниченной ответственностью "Пионер-Лизинг"',20,135,NULL,NULL),
(2210,'RU000A1013N6','Общество с ограниченной ответственностью "Пионер-Лизинг"',20,135,NULL,NULL),
(2211,'RU000A102LF6','Общество с ограниченной ответственностью "Пионер-Лизинг"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2212,'RU000A1004L9','Общество с ограниченной ответственностью "Правоурмийское"',20,135,NULL,NULL),
(2213,'RU000A0JURQ3','Общество с ограниченной ответственностью "Промкапитал"',22,135,NULL,NULL),
(2214,'RU000A0JURP5','Общество с ограниченной ответственностью "Профит-Гарант"',22,135,NULL,NULL),
(2216,'RU000A0JWWX5','Общество с ограниченной ответственностью "РЕГИОН Групп Лизинг"',22,135,NULL,NULL),
(2217,'RU000A0JU6M6','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2218,NULL,'Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2219,'RU000A1004S4','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2220,'RU000A0JVUS1','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2221,'RU000A101ST4','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2222,'RU000A0JVXS5','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2223,'RU000A100F95','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2224,'RU000A0JWVT5','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2225,'RU000A100NS9','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2226,'RU000A100PE4','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2227,'RU000A100XU4','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2228,'RU000A102K39','Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2229,NULL,'Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2230,NULL,'Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2231,NULL,'Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2232,NULL,'Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2233,NULL,'Общество с ограниченной ответственностью "РЕСО-Лизинг"',20,135,NULL,NULL),
(2234,'RU000A0JUAG0','Общество с ограниченной ответственностью "РСГ-Финанс"',20,135,NULL,NULL),
(2235,NULL,'Общество с ограниченной ответственностью "РСГ-Финанс"',20,135,NULL,NULL),
(2236,'RU000A0JXN13','Общество с ограниченной ответственностью "РСГ-Финанс"',20,135,NULL,NULL),
(2237,NULL,'Общество с ограниченной ответственностью "РСГ-Финанс"',20,135,NULL,NULL),
(2238,'RU000A100PS4','Общество с ограниченной ответственностью "РСГ-Финанс"',20,135,NULL,NULL),
(2239,'RU000A0JWLJ7','Общество с ограниченной ответственностью "РСГ-Финанс"',20,135,NULL,NULL),
(2240,'RU000A100PM7','Общество с ограниченной ответственностью "РСГ-Финанс"',20,135,NULL,NULL),
(2241,'RU000A101TE4','Общество с ограниченной ответственностью "Ред Софт"',20,135,NULL,NULL),
(2242,'RU000A1000V6','Общество с ограниченной ответственностью "Ред Софт"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2243,'RU000A0ZZYS0','Общество с ограниченной ответственностью "Ресурсосбережение ХМАО"',22,135,NULL,NULL),
(2244,'RU000A100JH0','Общество с ограниченной ответственностью "Ритейл Бел Финанс"',22,135,NULL,NULL),
(2245,'RU000A1018F1','Общество с ограниченной ответственностью "Роял Капитал"',20,135,NULL,NULL),
(2246,'RU000A101X27','Общество с ограниченной ответственностью "Роял Капитал"',20,135,NULL,NULL),
(2247,'RU000A102FX1','Общество с ограниченной ответственностью "Роял Капитал"',20,135,NULL,NULL),
(2248,'RU000A100HW3','Общество с ограниченной ответственностью "С-Инновации"',20,135,NULL,NULL),
(2249,'RU000A0JWKY8','Общество с ограниченной ответственностью "САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ"',22,135,NULL,NULL),
(2250,'RU000A0JXMB0','Общество с ограниченной ответственностью "САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ"',22,135,NULL,NULL),
(2251,'RU000A0JXPT5','Общество с ограниченной ответственностью "САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ"',22,135,NULL,NULL),
(2252,'RU000A0ZYZS0','Общество с ограниченной ответственностью "САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2253,'RU000A0ZYB81','Общество с ограниченной ответственностью "САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ"',20,135,NULL,NULL),
(2254,'RU000A0ZYL30','Общество с ограниченной ответственностью "САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ"',20,135,NULL,NULL),
(2255,NULL,'Общество с ограниченной ответственностью "САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ"',20,135,NULL,NULL),
(2256,'RU000A0ZYLR2','Общество с ограниченной ответственностью "САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ"',20,135,NULL,NULL),
(2257,NULL,'Общество с ограниченной ответственностью "САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ"',20,135,NULL,NULL),
(2258,'RU000A102SM7','Общество с ограниченной ответственностью "СДЭК-Глобал"',20,135,NULL,NULL),
(2259,'RU000A0ZZG93','Общество с ограниченной ответственностью "СУЭК-Финанс"',20,135,NULL,NULL),
(2260,'RU000A100VG7','Общество с ограниченной ответственностью "СУЭК-Финанс"',20,135,NULL,NULL),
(2261,'RU000A100Y50','Общество с ограниченной ответственностью "СУЭК-Финанс"',20,135,NULL,NULL),
(2262,'RU000A101CQ4','Общество с ограниченной ответственностью "СУЭК-Финанс"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2263,'RU000A102986','Общество с ограниченной ответственностью "СУЭК-Финанс"',20,135,NULL,NULL),
(2264,'RU000A0JXVE5','Общество с ограниченной ответственностью "Связьинвестнефтехим-Финанс"',20,135,NULL,NULL),
(2265,'RU000A0JRU20','Общество с ограниченной ответственностью "Северо-Западная концессионная компания"',22,135,NULL,NULL),
(2266,'RU000A0JRU46','Общество с ограниченной ответственностью "Северо-Западная концессионная компания"',22,135,NULL,NULL),
(2267,NULL,'Общество с ограниченной ответственностью "Сибирская Нива"',20,135,NULL,NULL),
(2268,NULL,'Общество с ограниченной ответственностью "Сибирские инвестиции"',20,135,NULL,NULL),
(2269,'RU000A101947','Общество с ограниченной ответственностью "Сибирский комбинат хлебопродуктов"',20,135,NULL,NULL),
(2270,NULL,'Общество с ограниченной ответственностью "Сибирское Стекло"',20,135,NULL,NULL),
(2271,'RU000A1026R9','Общество с ограниченной ответственностью "Сибирское Стекло"',20,135,NULL,NULL),
(2272,'RU000A1028H6','Общество с ограниченной ответственностью "Сибнефтехимтрейд"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2273,'RU000A0ZZZN8','Общество с ограниченной ответственностью "Совкомбанк Лизинг"',20,135,NULL,NULL),
(2274,'RU000A0ZZEA0','Общество с ограниченной ответственностью "Солид-Лизинг"',20,135,NULL,NULL),
(2275,'RU000A0ZZMQ9','Общество с ограниченной ответственностью "Солид-Лизинг"',20,135,NULL,NULL),
(2276,'RU000A0ZZY42','Общество с ограниченной ответственностью "Солид-Лизинг"',20,135,NULL,NULL),
(2277,'RU000A1005N2','Общество с ограниченной ответственностью "Солид-Лизинг"',20,135,NULL,NULL),
(2278,'RU000A100TD8','Общество с ограниченной ответственностью "Солид-Лизинг"',20,135,NULL,NULL),
(2279,'RU000A1018D6','Общество с ограниченной ответственностью "Солид-Лизинг"',20,135,NULL,NULL),
(2280,'RU000A101J82','Общество с ограниченной ответственностью "СпецИнвестЛизинг"',20,135,NULL,NULL),
(2281,'RU000A101XB2','Общество с ограниченной ответственностью "СпецИнвестЛизинг"',20,135,NULL,NULL),
(2282,'RU000A0JXLU2','Общество с ограниченной ответственностью "Специализированное финансовое общество "Локосервис финанс"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2283,'RU000A101CJ9','Общество с ограниченной ответственностью "Специализированное финансовое общество "СБ Структурные продукты"',22,135,NULL,NULL),
(2284,'RU000A101F11','Общество с ограниченной ответственностью "Специализированное финансовое общество Аккорд Финанс"',22,135,NULL,NULL),
(2285,'RU000A101715','Общество с ограниченной ответственностью "Специализированное финансовое общество БКС Структурные Ноты"',22,135,NULL,NULL),
(2286,NULL,'Общество с ограниченной ответственностью "Специализированное финансовое общество БКС Структурные Ноты"',22,135,NULL,NULL),
(2287,'RU000A1011M2','Общество с ограниченной ответственностью "Специализированное финансовое общество БКС Структурные Ноты"',22,135,NULL,NULL),
(2288,'RU000A102945','Общество с ограниченной ответственностью "Специализированное финансовое общество БКС Структурные Ноты"',22,135,NULL,NULL),
(2289,'RU000A101JN6','Общество с ограниченной ответственностью "Специализированное финансовое общество ИнвестКредит Финанс"',22,135,NULL,NULL),
(2290,'RU000A1015Z5','Общество с ограниченной ответственностью "Специализированное финансовое общество МОС МСП 2"',22,135,NULL,NULL),
(2291,'RU000A1016A6','Общество с ограниченной ответственностью "Специализированное финансовое общество МОС МСП 3"',22,135,NULL,NULL),
(2292,'RU000A102B71','Общество с ограниченной ответственностью "Специализированное финансовое общество МОС МСП 5"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2293,'RU000A1028R5','Общество с ограниченной ответственностью "Специализированное финансовое общество МОС МСП 6"',22,135,NULL,NULL),
(2294,'RU000A101DA6','Общество с ограниченной ответственностью "Специализированное финансовое общество РуСол 1"',22,135,NULL,NULL),
(2295,'RU000A101DB4','Общество с ограниченной ответственностью "Специализированное финансовое общество РуСол 1"',22,135,NULL,NULL),
(2296,'RU000A101D96','Общество с ограниченной ответственностью "Специализированное финансовое общество РуСол 1"',22,135,NULL,NULL),
(2297,'RU000A1021E8','Общество с ограниченной ответственностью "Специализированное финансовое общество Социально-финансовая инфраструктура"',22,135,NULL,NULL),
(2298,'RU000A102L20','Общество с ограниченной ответственностью "Специализированное финансовое общество Т-Финанс"',22,135,NULL,NULL),
(2513,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2299,NULL,'Общество с ограниченной ответственностью "Специализированное финансовое общество Транспортная инфраструктура"',22,135,NULL,NULL),
(2300,'RU000A102T30','Общество с ограниченной ответственностью "Специализированное финансовое общество Ф-Капитал"',22,135,NULL,NULL),
(2301,'RU000A100AA4','Общество с ограниченной ответственностью "ТАЛАН-ФИНАНС"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2302,'RU000A102US0','Общество с ограниченной ответственностью "ТАЛАН-ФИНАНС"',20,135,NULL,NULL),
(2303,'RU000A102J57','Общество с ограниченной ответственностью "ТЕПЛОЭНЕРГО"',20,135,NULL,NULL),
(2304,'RU000A0JVJA2','Общество с ограниченной ответственностью "ТЕТИС Кэпитал"',15,NULL,NULL,NULL),
(2305,'RU000A0JUTH8','Общество с ограниченной ответственностью "ТЕТИС Кэпитал"',15,NULL,NULL,NULL),
(2306,'RU000A100DM3','Общество с ограниченной ответственностью "ТЕХНО Лизинг"',20,135,NULL,NULL),
(2307,'RU000A100RS0','Общество с ограниченной ответственностью "ТЕХНО Лизинг"',20,135,NULL,NULL),
(2308,'RU000A102234','Общество с ограниченной ответственностью "ТЕХНО Лизинг"',20,135,NULL,NULL),
(2309,'RU000A0JUTC9','Общество с ограниченной ответственностью "ТМ-энерго финанс"',22,135,NULL,NULL),
(2310,'RU000A0JRTR3','Общество с ограниченной ответственностью "ТРИНФИКО Пропети Менеджмент"',15,NULL,NULL,NULL),
(2311,'RU000A0JVUA9','Общество с ограниченной ответственностью "ТРИНФИКО Пропети Менеджмент"',16,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2312,'RU000A102QY6','Общество с ограниченной ответственностью "ТФН"',20,135,NULL,NULL),
(2313,'RU000A102BD2','Общество с ограниченной ответственностью "Татнефтехим"',20,135,NULL,NULL),
(2314,'RU000A1014U9','Общество с ограниченной ответственностью "Торговое предприятие "Кировский"',20,135,NULL,NULL),
(2315,'RU000A101PV6','Общество с ограниченной ответственностью "Торговый дом РКС-Сочи"',20,135,NULL,NULL),
(2316,'RU000A102KQ5','Общество с ограниченной ответственностью "Торговый дом РКС-Сочи"',20,135,NULL,NULL),
(2317,'RU000A100E70','Общество с ограниченной ответственностью "Транс-Миссия"',20,135,NULL,NULL),
(2318,'RU000A1014V7','Общество с ограниченной ответственностью "Трейд Менеджмент"',20,135,NULL,NULL),
(2319,'RU000A100WR2','Общество с ограниченной ответственностью "Ультра"',20,135,NULL,NULL),
(2320,'RU000A0JTVY1','Общество с ограниченной ответственностью "Управление Сбережениями"',15,NULL,NULL,NULL),
(2321,'RU000A0ZZTQ4','Общество с ограниченной ответственностью "Управляющая компания "Альфа-Капитал"',14,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2322,'RU000A100Q43','Общество с ограниченной ответственностью "Управляющая компания "Альфа-Капитал"',14,NULL,NULL,NULL),
(2323,'RU000A101HY7','Общество с ограниченной ответственностью "Управляющая компания "Альфа-Капитал"',15,NULL,NULL,NULL),
(2324,'RU000A101YY2','Общество с ограниченной ответственностью "Управляющая компания "Альфа-Капитал"',15,NULL,NULL,NULL),
(2325,'RU000A0ZZCD8','Общество с ограниченной ответственностью "Управляющая компания "Атон-менеджмент"',16,NULL,NULL,NULL),
(2326,'RU000A0JVKZ7','Общество с ограниченной ответственностью "Управляющая компания "БАЙКАЛ"',15,NULL,NULL,NULL),
(2327,'RU000A0JRBT7','Общество с ограниченной ответственностью "Управляющая компания "Биопроцесс Кэпитал Партнерс"',15,NULL,NULL,NULL),
(2328,'RU000A101NK4','Общество с ограниченной ответственностью "Управляющая компания "Восток-Запад"',15,NULL,NULL,NULL),
(2329,'RU000A1027E5','Общество с ограниченной ответственностью "Управляющая компания "Восток-Запад"',15,NULL,NULL,NULL),
(2330,'RU000A0JUZ61','Общество с ограниченной ответственностью "Управляющая компания "ДОХОДЪ"',15,NULL,NULL,NULL),
(2331,'RU000A0JPY69','Общество с ограниченной ответственностью "Управляющая компания "Михайловский"',15,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2332,'RU000A0JNUM1','Общество с ограниченной ответственностью "Управляющая компания "Навигатор"',15,NULL,NULL,NULL),
(2333,'RU000A0JPWL4','Общество с ограниченной ответственностью "Управляющая компания "ОРЕОЛ"',15,NULL,NULL,NULL),
(2334,'RU000A0JQT81','Общество с ограниченной ответственностью "Управляющая компания "ОРЕОЛ"',15,NULL,NULL,NULL),
(2335,'RU000A101UK9','Общество с ограниченной ответственностью "Управляющая компания "ОРЕОЛ"',15,NULL,NULL,NULL),
(2336,'RU000A102408','Общество с ограниченной ответственностью "Управляющая компания "ОТКРЫТИЕ"',15,NULL,NULL,NULL),
(2337,'RU000A0JSGF3','Общество с ограниченной ответственностью "Управляющая компания "Прагма Капитал"',15,NULL,NULL,NULL),
(2338,'RU000A0JU0G1','Общество с ограниченной ответственностью "Управляющая компания "Прагма Капитал"',15,NULL,NULL,NULL),
(2339,'RU000A101MF6','Общество с ограниченной ответственностью "Управляющая компания "Райффайзен Капитал"',14,NULL,NULL,NULL),
(2340,'RU000A0JR7Z1','Общество с ограниченной ответственностью "Управляющая компания "Русь Менеджмент"',15,NULL,NULL,NULL),
(2341,'RU000A0JR811','Общество с ограниченной ответственностью "Управляющая компания "Русь Менеджмент"',15,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2342,'RU000A0JR7X6','Общество с ограниченной ответственностью "Управляющая компания "Русь Менеджмент"',15,NULL,NULL,NULL),
(2343,'RU000A0JUYB1','Общество с ограниченной ответственностью "Управляющая компания "Свиньин и Партнеры"',15,NULL,NULL,NULL),
(2344,'RU000A0JPGC6','Общество с ограниченной ответственностью "Управляющая компания "Содружество"',15,NULL,NULL,NULL),
(2345,'RU000A102GX9','Общество с ограниченной ответственностью "Управляющая компания "Финам Менеджмент"',14,NULL,NULL,NULL),
(2346,'RU000A0ZZ422','Общество с ограниченной ответственностью "Управляющая компания "Финансовая основа"',15,NULL,NULL,NULL),
(2347,'RU000A0JP450','Общество с ограниченной ответственностью "Управляющая компания КапиталЪ Паевые Инвестиционные Фонды"',15,NULL,NULL,NULL),
(2348,'RU000A0JS991','Общество с ограниченной ответственностью "Управляющая компания Портфельные инвестиции"',15,NULL,NULL,NULL),
(2349,'RU000A0JVGP6','Общество с ограниченной ответственностью "Управляющая компания Портфельные инвестиции"',15,NULL,NULL,NULL),
(2350,'RU000A101TA2','Общество с ограниченной ответственностью "Урожай"',20,135,NULL,NULL),
(2351,'RU000A0ZYSE5','Общество с ограниченной ответственностью "ФИНКОНСАЛТ"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2352,'RU000A1009R5','Общество с ограниченной ответственностью "ФЭС-Агро"',20,135,NULL,NULL),
(2353,NULL,'Общество с ограниченной ответственностью "ФЭС-Агро"',20,135,NULL,NULL),
(2354,'RU000A0JVE65','Общество с ограниченной ответственностью "Финанс-менеджмент"',22,135,NULL,NULL),
(2355,'RU000A0JUDX9','Общество с ограниченной ответственностью "Финстоун"',22,135,NULL,NULL),
(2356,'RU000A0ZZUZ3','Общество с ограниченной ответственностью "ХК Финанс"',20,135,NULL,NULL),
(2357,'RU000A100AP2','Общество с ограниченной ответственностью "ХК Финанс"',20,135,NULL,NULL),
(2358,'RU000A101U79','Общество с ограниченной ответственностью "ХК Финанс"',20,135,NULL,NULL),
(2359,'RU000A102CD0','Общество с ограниченной ответственностью "ХК Финанс"',20,135,NULL,NULL),
(2360,'RU000A102W68','Общество с ограниченной ответственностью "ХК Финанс"',20,135,NULL,NULL),
(2361,NULL,'Общество с ограниченной ответственностью "Хоум Кредит энд Финанс Банк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2362,NULL,'Общество с ограниченной ответственностью "Хоум Кредит энд Финанс Банк"',20,135,NULL,NULL),
(2363,'RU000A102GY7','Общество с ограниченной ответственностью "Хэдхантер"',20,135,NULL,NULL),
(2364,'RU000A101UL7','Общество с ограниченной ответственностью "Центр Генетики и Репродуктивной Медицины "ГЕНЕТИКО"',20,135,NULL,NULL),
(2365,'RU000A100VY0','Общество с ограниченной ответственностью "ЭБИС"',20,135,NULL,NULL),
(2366,'RU000A1014A1','Общество с ограниченной ответственностью "ЭБИС"',20,135,NULL,NULL),
(2367,'RU000A102101','Общество с ограниченной ответственностью "ЭБИС"',20,135,NULL,NULL),
(2368,NULL,'Общество с ограниченной ответственностью "ЭБИС"',20,135,NULL,NULL),
(2369,'RU000A102028','Общество с ограниченной ответственностью "ЭНЕРГОНИКА"',20,135,NULL,NULL),
(2370,NULL,'Общество с ограниченной ответственностью "Экспобанк"',20,135,NULL,NULL),
(2371,'RU000A100QY0','Общество с ограниченной ответственностью "Электрощит-Стройсистема"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2372,'RU000A101UD4','Общество с ограниченной ответственностью "Электрощит-Стройсистема"',20,135,NULL,NULL),
(2373,'RU000A1015S0','Общество с ограниченной ответственностью "Энерготехсервис"',20,135,NULL,NULL),
(2374,'RU000A101TR6','Общество с ограниченной ответственностью "Энерготехсервис"',20,135,NULL,NULL),
(2375,'RU000A101VR2','Общество с ограниченной ответственностью "Энерготехсервис"',20,135,NULL,NULL),
(2376,'RU000A100T81','Общество с ограниченной ответственностью "ЮниМетрикс"',22,135,NULL,NULL),
(2377,'RU000A102TK9','Общество с ограниченной ответственностью "ЮниСервис Капитал"',22,135,NULL,NULL),
(2378,'RU000A0JWKL5','Общество с ограниченной ответственностью "ЯмалСтройИнвест"',22,135,NULL,NULL),
(2379,'RU000A102N77','Общество с ограниченной ответственностью ВТБ Капитал Пенсионный резерв',15,NULL,NULL,NULL),
(2380,'RU000A1003N7','Общество с ограниченной ответственностью Инвестиционная компания "Фридом Финанс"',20,135,NULL,NULL),
(2381,'RU000A101CG5','Общество с ограниченной ответственностью Инвестиционная компания "Фридом Финанс"',20,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2382,'RU000A102TL7','Общество с ограниченной ответственностью Микрофинансовая компания "Займер"',22,135,NULL,NULL),
(2383,'RU000A0ZYAQ7','Общество с ограниченной ответственностью Микрофинансовая компания "КарМани"',20,135,NULL,NULL),
(2384,'RU000A0ZZ1F6','Общество с ограниченной ответственностью Микрофинансовая компания "КарМани"',20,135,NULL,NULL),
(2385,'RU000A1014P9','Общество с ограниченной ответственностью Микрофинансовая компания "КарМани"',20,135,NULL,NULL),
(2386,'RU000A100V38','Общество с ограниченной ответственностью Научно-производственное предприятие "Моторные технологии"',20,135,NULL,NULL),
(2387,'RU000A101HA7','Общество с ограниченной ответственностью Научно-производственное предприятие "Моторные технологии"',20,135,NULL,NULL),
(2388,'RU000A1024A0','Общество с ограниченной ответственностью Специализированное финансовое общество ВТБ Инвестиционные Продукты',22,135,NULL,NULL),
(2389,'RU000A101ZJ0','Общество с ограниченной ответственностью Специализированное финансовое общество ВТБ Инвестиционные Продукты',22,135,NULL,NULL),
(2390,NULL,'Общество с ограниченной ответственностью Специализированное финансовое общество ВТБ Инвестиционные Продукты',22,135,NULL,NULL),
(2391,NULL,'Общество с ограниченной ответственностью Специализированное финансовое общество ВТБ Инвестиционные Продукты',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2392,'RU000A0ZZNV7','Общество с ограниченной ответственностью Специализированный застройщик "СК Легион"',20,135,NULL,NULL),
(2393,'RU000A100303','Общество с ограниченной ответственностью Топливная компания "Нафтатранс плюс"',20,135,NULL,NULL),
(2394,'RU000A100YD8','Общество с ограниченной ответственностью Топливная компания "Нафтатранс плюс"',20,135,NULL,NULL),
(2395,'RU000A102V51','Общество с ограниченной ответственностью Топливная компания "Нафтатранс плюс"',20,135,NULL,NULL),
(2396,'RU000A0ZZGZ2','Общество с ограниченной ответственностью Торговый Дом "Мясничий"',20,135,NULL,NULL),
(2397,'RU000A1006B5','Общество с ограниченной ответственностью Торговый Дом "Мясничий"',20,135,NULL,NULL),
(2398,'RU000A0JPZP8','Общество с ограниченной ответственностью Управляющая компания "АК БАРС КАПИТАЛ"',15,NULL,NULL,NULL),
(2399,'RU000A0JPZL7','Общество с ограниченной ответственностью Управляющая компания "АК БАРС КАПИТАЛ"',15,NULL,NULL,NULL),
(2400,'RU000A0JRRN6','Общество с ограниченной ответственностью Управляющая компания "Гарант ФинКом"',15,NULL,NULL,NULL),
(2401,'RU000A0JQP77','Общество с ограниченной ответственностью Управляющая компания "Надежное управление"',15,NULL,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2402,'RU000A0JQPA9','Общество с ограниченной ответственностью Управляющая компания "Надежное управление"',15,NULL,NULL,NULL),
(2403,'RU000A0JQP93','Общество с ограниченной ответственностью Управляющая компания "Надежное управление"',15,NULL,NULL,NULL),
(2404,'RU000A0JT8U8','Общество с ограниченной ответственностью Управляющая компания "Надежное управление"',15,NULL,NULL,NULL),
(2405,NULL,'Общество с ограниченной ответственностью микрофинансовая компания "МигКредит"',20,135,NULL,NULL),
(2406,'RU000A100GK0','Общество с ограниченной ответственностью микрофинансовая компания "МигКредит"',20,135,NULL,NULL),
(2407,'RU000A102T55','Общество с ограниченной ответственностью микрофинансовая компания "Центр Финансовой Поддержки"',22,135,NULL,NULL),
(2408,'RU000A102S23','Открытое акционерное общество "Агрофирма – племзавод "Победа"',20,135,NULL,NULL),
(2409,'RU000A102LW1','Открытое акционерное общество "Асфальтобетонный завод №1"',20,135,NULL,NULL),
(2410,'RU000A0J2QG8','Открытое акционерное общество "Белон"',8,135,NULL,NULL),
(2411,'RU000A0JTWT9','Открытое акционерное общество "Верхнебаканский цементный завод"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2412,'RU000A0ZYLK7','Открытое акционерное общество "Верхнебаканский цементный завод"',20,135,NULL,NULL),
(2413,'RU000A0JQW11','Открытое акционерное общество "Донской завод радиодеталей"',8,135,NULL,NULL),
(2414,'RU000A0JQW29','Открытое акционерное общество "Донской завод радиодеталей"',10,135,NULL,NULL),
(2415,'RU000A0JT7Y2','Открытое акционерное общество "Левенгук"',8,135,NULL,NULL),
(2416,'RU000A0ZYHW0','Открытое акционерное общество "Левенгук"',20,135,NULL,NULL),
(2417,'RU000A0D8MR7','Открытое акционерное общество "Липецкая энергосбытовая компания"',8,135,NULL,NULL),
(2418,'RU000A0JVYM6','Открытое акционерное общество "Межрегиональная распределительная сетевая компания Урала"',20,135,NULL,NULL),
(2419,'RU000A0JWR51','Открытое акционерное общество "Межрегиональная распределительная сетевая компания Урала"',20,135,NULL,NULL),
(2420,'RU000A0JTFH9','Открытое акционерное общество "Мультисистема"',8,135,NULL,NULL),
(2421,'RU000A0JQ5X1','Открытое акционерное общество "Научно-производственное объединение "Физика"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2422,'RU0009100911','Открытое акционерное общество "Соликамский магниевый завод"',8,135,NULL,NULL),
(2423,NULL,'Открытое акционерное общество "Тверской вагоностроительный завод"',20,135,NULL,NULL),
(2424,'RU000A0JP0U9','ПУБЛИЧНОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО "БАНК "САНКТ-ПЕТЕРБУРГ"',10,135,NULL,NULL),
(2425,'RU000A0JP0Q7','ПУБЛИЧНОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО "УПРАВЛЯЮЩАЯ КОМПАНИЯ "АРСАГЕРА"',8,135,NULL,NULL),
(2426,'RU000A0ZYL22','Правительство Карачаево-Черкесской Республики',21,135,NULL,NULL),
(2427,'RU000A0JU5W7','Правительство Москвы в лице Департамента финансов города Москвы',21,135,NULL,NULL),
(2428,'RU000A0ZYGM3','Правительство Орловской области',21,135,NULL,NULL),
(2429,'RU000A102M37','Правительство Удмуртской Республики в лице Министерства финансов Удмуртской Республики',21,135,NULL,NULL),
(2430,'RU000A0JWT91','Правительство Удмуртской Республики в лице Министерства финансов Удмуртской Республики',21,135,NULL,NULL),
(2431,'RU0009100507','Публичное Акционерное Общество "Нижнекамскнефтехим"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2432,'RU0006765096','Публичное Акционерное Общество "Нижнекамскнефтехим"',10,135,NULL,NULL),
(2433,'RU000A0ZZZ17','Публичное Акционерное Общество "Нижнекамскнефтехим"',20,135,NULL,NULL),
(2434,'RU000A0JVA36','Публичное Акционерное Общество "Сибирский гостинец"',8,135,NULL,NULL),
(2435,'RU000A0JP468','Публичное акционерное общество "АЛРОСА-Нюрба"',8,135,NULL,NULL),
(2436,'RU000A0JXS91','Публичное акционерное общество "АСКО-СТРАХОВАНИЕ"',8,135,NULL,NULL),
(2437,'RU000A0JS5T7','Публичное акционерное общество "Абрау – Дюрсо"',8,135,NULL,NULL),
(2438,'RU0007661385','Публичное акционерное общество "Авиакомпания "ЮТэйр"',8,135,NULL,NULL),
(2439,'RU0007976957','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',8,135,NULL,NULL),
(2440,'RU0007976965','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',10,135,NULL,NULL),
(2441,'RU000A0JS3U0','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2442,'RU000A0JX2P5','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2443,'RU000A0JWH87','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2444,'RU000A0JX2X9','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2445,'RU000A0JVEQ9','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2446,'RU000A0JX9X4','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2447,'RU000A0JVFD4','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2448,'RU000A0JUML5','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2449,'RU000A0JWGC2','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2450,'RU000A0JVHF5','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2451,'RU000A0JWGD0','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2452,'RU000A0JWX04','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2453,'RU000A0JX2Q3','Публичное акционерное общество "Акционерная нефтяная Компания "Башнефть"',20,135,NULL,NULL),
(2454,'RU000A0JVUK8','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(2455,'RU000A0JVXZ0','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(2456,'RU000A0JWYQ5','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(2457,'RU000A0JWZY6','Публичное акционерное общество "Акционерная финансовая корпорация "Система"',20,135,NULL,NULL),
(2458,NULL,'Публичное акционерное общество "Акционерный коммерческий банк содействия коммерции и бизнесу"',20,135,NULL,NULL),
(2459,'RU000A1015T8','Публичное акционерное общество "Аптечная сеть 36,6"',20,135,NULL,NULL),
(2460,'RU000A101T72','Публичное акционерное общество "Аптечная сеть 36,6"',20,135,NULL,NULL),
(2461,'RU000A0D8MM8','Публичное акционерное общество "Астраханская энергосбытовая компания"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2514,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2462,'RU000A0JUQC5','Публичное акционерное общество "Ашинский металлургический завод"',20,135,NULL,NULL),
(2463,'RU0006929536','Публичное акционерное общество "БАНК УРАЛСИБ"',8,135,NULL,NULL),
(2464,'RU0009059216','Публичное акционерное общество "Башинформсвязь"',8,135,NULL,NULL),
(2465,'RU0009100176','Публичное акционерное общество "Башинформсвязь"',10,135,NULL,NULL),
(2466,'RU000A0JS2M9','Публичное акционерное общество "Бест Эффортс Банк"',8,135,NULL,NULL),
(2467,'RU0009288658','Публичное акционерное общество "Бурятзолото"',8,135,NULL,NULL),
(2468,'RU0009046460','Публичное акционерное общество "Варьеганнефтегаз"',8,135,NULL,NULL),
(2469,'RU0007964789','Публичное акционерное общество "Варьеганнефтегаз"',10,135,NULL,NULL),
(2470,'RU0007984761','Публичное акционерное общество "Владимирский химический завод"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2471,'RU000A0D8L73','Публичное акционерное общество "Волгоградэнергосбыт"',8,135,NULL,NULL),
(2472,'RU000A0D8L57','Публичное акционерное общество "Волгоградэнергосбыт"',10,135,NULL,NULL),
(2473,'RU0006334372','Публичное акционерное общество "Выборгский судостроительный завод"',8,135,NULL,NULL),
(2474,'RU0006334380','Публичное акционерное общество "Выборгский судостроительный завод"',10,135,NULL,NULL),
(2475,'RU000A0JS5E9','Публичное акционерное общество "Вымпел-Коммуникации"',22,135,NULL,NULL),
(2476,'RU000A0JS5M2','Публичное акционерное общество "Вымпел-Коммуникации"',22,135,NULL,NULL),
(2477,NULL,'Публичное акционерное общество "Вымпел-Коммуникации"',20,135,NULL,NULL),
(2478,'RU000A0JVUN2','Публичное акционерное общество "Вымпел-Коммуникации"',20,135,NULL,NULL),
(2479,'RU000A0JVUP7','Публичное акционерное общество "Вымпел-Коммуникации"',20,135,NULL,NULL),
(2480,NULL,'Публичное акционерное общество "Вымпел-Коммуникации"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2481,'RU0009034268','Публичное акционерное общество "ГАЗ"',8,135,NULL,NULL),
(2482,'RU000A0ZYHF5','Публичное акционерное общество "ГАЗ"',10,135,NULL,NULL),
(2483,'RU000A0JS199','Публичное акционерное общество "ГАЗ-Тек"',8,135,NULL,NULL),
(2484,'RU000A0JQG78','Публичное акционерное общество "ГАЗ-сервис"',8,135,NULL,NULL),
(2485,'RU000A0JQG86','Публичное акционерное общество "ГАЗКОН"',8,135,NULL,NULL),
(2486,'RU000A0JQ7U3','Публичное акционерное общество "ГЕОТЕК Сейсморазведка"',8,135,NULL,NULL),
(2487,NULL,'Публичное акционерное общество "ГЕОТЕК Сейсморазведка"',20,135,NULL,NULL),
(2488,NULL,'Публичное акционерное общество "ГЕОТЕК Сейсморазведка"',20,135,NULL,NULL),
(2489,NULL,'Публичное акционерное общество "ГЕОТЕК Сейсморазведка"',20,135,NULL,NULL),
(2490,NULL,'Публичное акционерное общество "ГЕОТЕК Сейсморазведка"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2491,'RU000A0ZYD22','Публичное акционерное общество "ГЛОБАЛТРАК МЕНЕДЖМЕНТ"',8,135,NULL,NULL),
(2492,'RU000A0JPG04','Публичное акционерное общество "Газпром газораспределение Ростов-на-Дону"',8,135,NULL,NULL),
(2493,'RU0009062467','Публичное акционерное общество "Газпром нефть"',8,135,NULL,NULL),
(2494,'RU000A0JWRE5','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2495,'RU000A0JXNF9','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2496,'RU000A101137','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2497,'RU000A0JXYL4','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2498,'RU000A1017J5','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2499,'RU000A0JWK41','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2500,'RU000A0ZYDS7','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2501,'RU000A101GJ0','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2502,'RU000A0JWRF2','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2503,'RU000A0ZYLC4','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2504,'RU000A102L95','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2505,'RU000A0ZYLQ4','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2506,'RU000A0ZYXV9','Публичное акционерное общество "Газпром нефть"',20,135,NULL,NULL),
(2507,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2508,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2509,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2510,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2511,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2512,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2515,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2516,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2517,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2518,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2519,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2520,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2521,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2522,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2523,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2524,'RU000A0JUAN6','Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2525,'RU000A0JUAP1','Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2526,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2527,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2528,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2529,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2530,NULL,'Публичное акционерное общество "Газпром"',20,135,NULL,NULL),
(2531,'US3682872078','Публичное акционерное общество "Газпром" (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(2532,NULL,'Публичное акционерное общество "Горно-металлургическая компания "Норильский никель"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2533,NULL,'Публичное акционерное общество "Горно-металлургическая компания "Норильский никель"',20,135,NULL,NULL),
(2534,NULL,'Публичное акционерное общество "Горно-металлургическая компания "Норильский никель"',20,135,NULL,NULL),
(2535,'RU000A0JV532','Публичное акционерное общество "Городские Инновационные Технологии"',8,135,NULL,NULL),
(2536,'RU000A0JTAP3','Публичное акционерное общество "Группа Компаний  "Роллман"',8,135,NULL,NULL),
(2537,'RU000A0JU229','Публичное акционерное общество "Группа Компаний  "Роллман"',10,135,NULL,NULL),
(2538,NULL,'Публичное акционерное общество "Группа Компаний  "Роллман"',20,135,NULL,NULL),
(2539,'RU000A0JL4R1','Публичное акционерное общество "Группа Черкизово"',8,135,NULL,NULL),
(2540,'RU000A0F63G0','Публичное акционерное общество "Дагестанская энергосбытовая компания"',8,135,NULL,NULL),
(2541,'RU000A0JP2W1','Публичное акционерное общество "Дальневосточная энергетическая компания"',8,135,NULL,NULL),
(2542,'RU0008992318','Публичное акционерное общество "Дальневосточное морское пароходство"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2543,NULL,'Публичное акционерное общество "Детский мир"',20,135,NULL,NULL),
(2544,NULL,'Публичное акционерное общество "Детский мир"',20,135,NULL,NULL),
(2545,NULL,'Публичное акционерное общество "Детский мир"',20,135,NULL,NULL),
(2546,'RU000A0JTN19','Публичное акционерное общество "ДжиТиЭл"',8,135,NULL,NULL),
(2547,'RU000A0JWW54','Публичное акционерное общество "Европейская Электротехника"',8,135,NULL,NULL),
(2548,'RU0009091300','Публичное акционерное общество "ЗВЕЗДА"',8,135,NULL,NULL),
(2549,'RU0009086193','Публичное акционерное общество "Завод имени И.А. Лихачева"',8,135,NULL,NULL),
(2550,'RU000A0JV7V4','Публичное акционерное общество "ИНВЕСТ-ДЕВЕЛОПМЕНТ"',8,135,NULL,NULL),
(2551,'RU000A0JWCW9','Публичное акционерное общество "ИНВЕСТ-ДЕВЕЛОПМЕНТ"',20,135,NULL,NULL),
(2552,'RU000A0JQ9W5','Публичное акционерное общество "ИНВЕСТИЦИОННАЯ КОМПАНИЯ ИК РУСС-ИНВЕСТ"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2553,'RU000A0DJ9B4','Публичное акционерное общество "ИНГРАД"',8,135,NULL,NULL),
(2554,'RU000A0JXLM9','Публичное акционерное общество "ИНГРАД"',20,135,NULL,NULL),
(2555,'RU000A0ZYG37','Публичное акционерное общество "ИНГРАД"',20,135,NULL,NULL),
(2556,'RU000A101798','Публичное акционерное общество "ИНГРАД"',20,135,NULL,NULL),
(2557,'RU000A0ZZXD4','Публичное акционерное общество "ИНГРАД"',20,135,NULL,NULL),
(2558,'RU000A101HP5','Публичное акционерное общество "ИНГРАД"',20,135,NULL,NULL),
(2559,'RU0002155292','Публичное акционерное общество "Ижсталь"',8,135,NULL,NULL),
(2560,'RU0002155300','Публичное акционерное общество "Ижсталь"',10,135,NULL,NULL),
(2561,'RU000A0JTHF9','Публичное акционерное общество "Инвестиционно-финансовая корпорация "СОЮЗ"',22,135,NULL,NULL),
(2562,'RU000A0JU278','Публичное акционерное общество "Инвестиционно-финансовая корпорация "СОЮЗ"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2563,'RU000A0JNAB6','Публичное акционерное общество "Институт Стволовых Клеток Человека"',8,135,NULL,NULL),
(2564,'RU000A0DKZK3','Публичное акционерное общество "Калужская сбытовая компания"',8,135,NULL,NULL),
(2565,'RU000A0ZZYL5','Публичное акционерное общество "Калужская сбытовая компания"',20,135,NULL,NULL),
(2566,'RU000A0JPGE2','Публичное акционерное общество "Каменск-Уральский завод по обработке цветных металлов"',8,135,NULL,NULL),
(2567,'RU000A0JNMZ0','Публичное акционерное общество "Квадра - Генерирующая компания"',8,135,NULL,NULL),
(2568,'RU000A0JNNB9','Публичное акционерное общество "Квадра - Генерирующая компания"',10,135,NULL,NULL),
(2569,'RU000A101S99','Публичное акционерное общество "Кировский завод"',22,135,NULL,NULL),
(2570,'RU000A102UZ5','Публичное акционерное общество "Кировский завод"',22,135,NULL,NULL),
(2571,'RU000A0ERNT3','Публичное акционерное общество "Кокс"',8,135,NULL,NULL),
(2572,NULL,'Публичное акционерное общество "Кокс"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2573,NULL,'Публичное акционерное общество "Кокс"',20,135,NULL,NULL),
(2574,'RU000A0JVDF4','Публичное акционерное общество "Кокс"',20,135,NULL,NULL),
(2575,'RU0002155359','Публичное акционерное общество "Коршуновский горно-обогатительный комбинат"',8,135,NULL,NULL),
(2576,'RU000A0HF1L0','Публичное акционерное общество "Косогорский металлургический завод"',8,135,NULL,NULL),
(2577,'RU000A0D8LW9','Публичное акционерное общество "Костромская сбытовая компания"',8,135,NULL,NULL),
(2578,'RU000A0D8PA6','Публичное акционерное общество "Костромская сбытовая компания"',10,135,NULL,NULL),
(2579,'RU000A0JNHK2','Публичное акционерное общество "Краснокамский завод металлических сеток"',8,135,NULL,NULL),
(2580,'RU000A0HMLY1','Публичное акционерное общество "Красноярскэнергосбыт"',8,135,NULL,NULL),
(2581,'RU000A0HMLZ8','Публичное акционерное общество "Красноярскэнергосбыт"',10,135,NULL,NULL),
(2582,'RU000A0JPYD7','Публичное акционерное общество "Кузбасская Топливная Компания"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2583,'RU000A0B9BV2','Публичное акционерное общество "КуйбышевАзот"',8,135,NULL,NULL),
(2584,'RU000A0B9BW0','Публичное акционерное общество "КуйбышевАзот"',10,135,NULL,NULL),
(2585,'RU000A0JP120','Публичное акционерное общество "Курганская генерирующая компания"',8,135,NULL,NULL),
(2586,'RU000A0JP138','Публичное акционерное общество "Курганская генерирующая компания"',10,135,NULL,NULL),
(2587,'RU000A0JQ128','Публичное акционерное общество "МЕРИДИАН"',8,135,NULL,NULL),
(2588,'RU000A0JRAK8','Публичное акционерное общество "МЕТКОМБАНК"',8,135,NULL,NULL),
(2589,'RU000A0JWN63','Публичное акционерное общество "МОСТОТРЕСТ"',22,135,NULL,NULL),
(2590,'RU000A0JWN89','Публичное акционерное общество "МОСТОТРЕСТ"',22,135,NULL,NULL),
(2591,'RU000A0JS942','Публичное акционерное общество "МегаФон"',8,135,NULL,NULL),
(2592,NULL,'Публичное акционерное общество "МегаФон"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2593,NULL,'Публичное акционерное общество "МегаФон"',20,135,NULL,NULL),
(2594,'RU000A0JWKA8','Публичное акционерное общество "МегаФон"',20,135,NULL,NULL),
(2595,NULL,'Публичное акционерное общество "МегаФон"',20,135,NULL,NULL),
(2596,'RU000A0JPWV3','Публичное акционерное общество "Медиахолдинг"',8,135,NULL,NULL),
(2597,'RU000A100GC7','Публичное акционерное общество "Международный Медицинский Центр Обработки и Криохранения Биоматериалов"',8,135,NULL,NULL),
(2598,'RU000A1001T8','Публичное акционерное общество "Международный Медицинский Центр Обработки и Криохранения Биоматериалов"',20,135,NULL,NULL),
(2599,NULL,'Публичное акционерное общество "Межрегиональная распределительная сетевая компания Северо-Запада"',20,135,NULL,NULL),
(2600,NULL,'Публичное акционерное общество "Межрегиональная распределительная сетевая компания Северо-Запада"',20,135,NULL,NULL),
(2601,NULL,'Публичное акционерное общество "Межрегиональная распределительная сетевая компания Северо-Запада"',20,135,NULL,NULL),
(2602,NULL,'Публичное акционерное общество "Межрегиональная распределительная сетевая компания Центра и Приволжья"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2603,NULL,'Публичное акционерное общество "Межрегиональная распределительная сетевая компания Центра и Приволжья"',20,135,NULL,NULL),
(2604,'RU000A0JVYL8','Публичное акционерное общество "Межрегиональная распределительная сетевая компания Центра"',20,135,NULL,NULL),
(2605,'RU000A0JQ8V9','Публичное акционерное общество "Мечел"',22,135,NULL,NULL),
(2606,'RU000A0JRJS2','Публичное акционерное общество "Мечел"',22,135,NULL,NULL),
(2607,'RU000A0JRJT0','Публичное акционерное общество "Мечел"',22,135,NULL,NULL),
(2608,'RU000A0JRJY0','Публичное акционерное общество "Мечел"',22,135,NULL,NULL),
(2609,'RU000A0D9AJ7','Публичное акционерное общество "Мордовская энергосбытовая компания"',8,135,NULL,NULL),
(2610,'RU0009092431','Публичное акционерное общество "Морион"',8,135,NULL,NULL),
(2611,'RU0009036461','Публичное акционерное общество "Московская городская телефонная сеть"',8,135,NULL,NULL),
(2612,'RU0009036479','Публичное акционерное общество "Московская городская телефонная сеть"',10,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2613,'RU0008913850','Публичное акционерное общество "Московская кондитерская фабрика "Красный Октябрь"',8,135,NULL,NULL),
(2614,'RU0008913868','Публичное акционерное общество "Московская кондитерская фабрика "Красный Октябрь"',10,135,NULL,NULL),
(2615,'RU000A0JQLB6','Публичное акционерное общество "Наука-Связь"',8,135,NULL,NULL),
(2616,'RU000A0JVBT9','Публичное акционерное общество "Научно-производственная корпорация "Объединенная Вагонная Компания"',8,135,NULL,NULL),
(2617,'RU0009115604','Публичное акционерное общество "Нефтекамский автозавод"',8,135,NULL,NULL),
(2618,'RU0009100515','Публичное акционерное общество "Нижнекамскшина"',8,135,NULL,NULL),
(2619,'RU000A0BLWD7','Публичное акционерное общество "Новороссийский комбинат хлебопродуктов"',8,135,NULL,NULL),
(2620,'RU0009084446','Публичное акционерное общество "Новороссийский морской торговый порт"',8,135,NULL,NULL),
(2621,NULL,'Публичное акционерное общество "Новороссийский морской торговый порт"',20,135,NULL,NULL),
(2622,NULL,'Публичное акционерное общество "Новороссийский морской торговый порт"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2623,NULL,'Публичное акционерное общество "Новороссийский морской торговый порт"',20,135,NULL,NULL),
(2624,NULL,'Публичное акционерное общество "Новороссийский морской торговый порт"',20,135,NULL,NULL),
(2625,'RU0009084453','Публичное акционерное общество "Новороссийское морское пароходство"',8,135,NULL,NULL),
(2626,'RU0009177281','Публичное акционерное общество "Новороссийское морское пароходство"',10,135,NULL,NULL),
(2627,'RU0007774998','Публичное акционерное общество "ОДК-Сатурн"',8,135,NULL,NULL),
(2628,'RU000A0JPLZ7','Публичное акционерное общество "Объединенная авиастроительная корпорация"',8,135,NULL,NULL),
(2629,'RU000A0JTQK0','Публичное акционерное общество "Объединенные Кредитные Системы"',8,135,NULL,NULL),
(2630,'RU0009083240','Публичное акционерное общество "Павловский автобус"',8,135,NULL,NULL),
(2631,'RU000A100TB2','Публичное акционерное общество "Пермская научно-производственная приборостроительная компания"',20,135,NULL,NULL),
(2632,'RU000A0ET123','Публичное акционерное общество "Пермская энергосбытовая компания"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2633,'RU000A0ET156','Публичное акционерное общество "Пермская энергосбытовая компания"',10,135,NULL,NULL),
(2634,'RU000A0JS1F5','Публичное акционерное общество "Промсвязьбанк"',22,135,NULL,NULL),
(2635,'RU000A0JS793','Публичное акционерное общество "Промсвязьбанк"',22,135,NULL,NULL),
(2636,'RU000A0JS710','Публичное акционерное общество "Промсвязьбанк"',22,135,NULL,NULL),
(2637,'RU000A101H92','Публичное акционерное общество "Промсвязьбанк"',22,135,NULL,NULL),
(2638,'RU000A101J33','Публичное акционерное общество "Промсвязьбанк"',22,135,NULL,NULL),
(2639,'RU000A101U38','Публичное акционерное общество "Промсвязьбанк"',20,135,NULL,NULL),
(2640,'RU000A102AJ1','Публичное акционерное общество "Промсвязьбанк"',20,135,NULL,NULL),
(2641,'RU000A102HR9','Публичное акционерное общество "Промсвязьбанк"',20,135,NULL,NULL),
(2642,'RU000A102RT4','Публичное акционерное общество "Промсвязьбанк"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2643,'RU000A0JWEU9','Публичное акционерное общество "Промсвязьбанк"',20,135,NULL,NULL),
(2644,'RU000A0JR6A6','Публичное акционерное общество "РБК"',8,135,NULL,NULL),
(2645,'RU0009082291','Публичное акционерное общество "РН-Западная Сибирь"',8,135,NULL,NULL),
(2646,'RU000A0JP922','Публичное акционерное общество "РОСИНТЕР РЕСТОРАНТС ХОЛДИНГ"',8,135,NULL,NULL),
(2647,'RU000A0JWDN6','Публичное акционерное общество "РУСАЛ Братский алюминиевый завод"',20,135,NULL,NULL),
(2648,NULL,'Публичное акционерное общество "РУСАЛ Братский алюминиевый завод"',20,135,NULL,NULL),
(2649,NULL,'Публичное акционерное общество "РУСАЛ Братский алюминиевый завод"',20,135,NULL,NULL),
(2650,NULL,'Публичное акционерное общество "РУСАЛ Братский алюминиевый завод"',20,135,NULL,NULL),
(2651,'RU0009095939','Публичное акционерное общество "Ракетно-космическая корпорация "Энергия" имени С.П. Королёва"',8,135,NULL,NULL),
(2652,'RU000A0JVAA1','Публичное акционерное общество "Росгосстрах Банк"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2653,NULL,'Публичное акционерное общество "Россети Волга"',20,135,NULL,NULL),
(2654,NULL,'Публичное акционерное общество "Россети Волга"',20,135,NULL,NULL),
(2655,NULL,'Публичное акционерное общество "Россети Волга"',20,135,NULL,NULL),
(2656,NULL,'Публичное акционерное общество "Россети Волга"',20,135,NULL,NULL),
(2657,'RU0009046767','Публичное акционерное общество "Россети Кубань"',8,135,NULL,NULL),
(2658,'RU000A0JVZK7','Публичное акционерное общество "Россети Кубань"',20,135,NULL,NULL),
(2659,'RU0009034490','Публичное акционерное общество "Россети Ленэнерго"',8,135,NULL,NULL),
(2660,'RU0009092134','Публичное акционерное общество "Россети Ленэнерго"',10,135,NULL,NULL),
(2661,NULL,'Публичное акционерное общество "Россети Ленэнерго"',20,135,NULL,NULL),
(2662,'RU000A0JVLM3','Публичное акционерное общество "Россети Ленэнерго"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2663,'RU000A0JWJX2','Публичное акционерное общество "Россети Московский регион"',20,135,NULL,NULL),
(2664,'RU000A0JPPQ7','Публичное акционерное общество "Россети Северный Кавказ"',8,135,NULL,NULL),
(2665,'RU000A0JPPG8','Публичное акционерное общество "Россети Юг"',8,135,NULL,NULL),
(2666,'RU000A0JXVT3','Публичное акционерное общество "Россети Юг"',20,135,NULL,NULL),
(2667,NULL,'Публичное акционерное общество "Российские сети"',20,135,NULL,NULL),
(2668,NULL,'Публичное акционерное общество "Российские сети"',20,135,NULL,NULL),
(2669,NULL,'Публичное акционерное общество "Российские сети"',20,135,NULL,NULL),
(2670,NULL,'Публичное акционерное общество "Российские сети"',20,135,NULL,NULL),
(2671,'US69343X2071','Публичное акционерное общество "Российские сети" (эмитент депозитарных расписок - The Bank of New York Mellon (Бэнк оф Нью Йорк Меллон))',12,NULL,NULL,NULL),
(2672,'RU000A0JPNP4','Публичное акционерное общество "Русгрэйн Холдинг"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2673,'RU000A0JU1B0','Публичное акционерное общество "Русолово"',8,135,NULL,NULL),
(2674,'RU000A0JNH21','Публичное акционерное общество "Русполимет"',8,135,NULL,NULL),
(2675,'RU000A0D9AF5','Публичное акционерное общество "Рязанская энергетическая сбытовая компания"',8,135,NULL,NULL),
(2676,'RU000A0JNP96','Публичное акционерное общество "СГ-Девелопмент"',8,135,NULL,NULL),
(2677,'RU0009100408','Публичное акционерное общество "Саратовский нефтеперерабатывающий завод"',8,135,NULL,NULL),
(2678,'RU0009100416','Публичное акционерное общество "Саратовский нефтеперерабатывающий завод"',10,135,NULL,NULL),
(2679,'RU000A1012K4','Публичное акционерное общество "Саратовский электроприборостроительный завод имени Серго Орджоникидзе"',20,135,NULL,NULL),
(2680,'RU000A102556','Публичное акционерное общество "Саратовский электроприборостроительный завод имени Серго Орджоникидзе"',20,135,NULL,NULL),
(2681,'RU0009100754','Публичное акционерное общество "Саратовэнерго"',8,135,NULL,NULL),
(2682,'RU0009100762','Публичное акционерное общество "Саратовэнерго"',10,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2683,'RU000A102HC1','Публичное акционерное общество "Сбербанк России"',22,135,NULL,NULL),
(2684,'RU000A101FD5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2685,'RU000A101G69','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2686,'RU000A101G51','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2687,'RU000A101GP7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2688,'RU000A101H19','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2689,'RU000A101GF8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2690,'RU000A101GT9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2691,'RU000A101HH2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2692,'RU000A101HG4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2693,'RU000A101HF6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2694,'RU000A101HK6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2695,'RU000A101JW7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2696,'RU000A101JE5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2697,'RU000A101J58','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2698,'RU000A101J41','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2699,'RU000A101J74','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2700,'RU000A101JX5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2701,'RU000A101K97','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2702,'RU000A101KH6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2703,'RU000A101KD5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2704,'RU000A101KF0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2705,'RU000A101KB9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2706,'RU000A101L21','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2707,'RU000A101L13','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2708,'RU000A101LB7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2709,'RU000A101LT9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2710,'RU000A101LU7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2711,'RU000A101LF8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2712,'RU000A101MH2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2713,'RU000A101MK6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2714,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2715,'RU000A101N37','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2716,'RU000A101SS6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2717,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2718,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2719,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2720,'RU000A101QJ9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2721,'RU000A101QH3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2722,'RU000A101QV4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2723,'RU000A101QY8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2724,'RU000A101QR2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2725,'RU000A101QT8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2726,'RU000A101QX0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2727,'RU000A101QU6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2728,'RU000A101S32','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2729,'RU000A101S40','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2730,'RU000A101SW8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2731,'RU000A101SX6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2732,'RU000A101T31','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2733,'RU000A101T23','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2734,'RU000A101U20','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2735,'RU000A101TZ9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2736,'RU000A101UZ7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2737,'RU000A101V11','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2738,'RU000A101V03','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2739,'RU000A101VL5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2740,'RU000A101VK7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2741,'RU000A101VS0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2742,'RU000A101VT8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2743,'RU000A101VU6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2744,'RU000A101W28','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2745,'RU000A101W36','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2746,'RU000A101WT6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2747,'RU000A101WG3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2748,'RU000A101WV2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2749,'RU000A101WU4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2750,'RU000A101Y83','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2751,'RU000A101Y75','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2752,'RU000A101YG9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2753,'RU000A101ZQ5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2754,'RU000A101ZL6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2755,'RU000A101ZM4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2756,'RU000A101ZV5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2757,'RU000A101ZT9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2758,'RU000A101ZS1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2759,'RU000A101ZR3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2760,'RU000A1020F7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2761,'RU000A1020G5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2762,'RU000A102168','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2763,'RU000A102176','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2764,'RU000A1021M1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2765,'RU000A1021N9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2766,'RU000A1021P4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2767,'RU000A1021Q2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2768,'RU000A102242','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2769,'RU000A102259','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2770,'RU000A102267','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2771,'RU000A102283','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2772,'RU000A1022N7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2773,'RU000A1022Q0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2774,'RU000A1022R8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2775,'RU000A1022S6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2776,'RU000A102358','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2777,'RU000A102341','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2778,'RU000A1023Z9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2779,'RU000A102416','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2780,'RU000A1023X4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2781,'RU000A1023Y2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2782,'RU000A1024N3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2783,'RU000A1024M5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2784,'RU000A1024T0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2785,'RU000A1025J8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2786,'RU000A1025L4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2787,'RU000A1025K6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2788,'RU000A1025R1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2789,'RU000A1025S9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2790,'RU000A102689','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2791,'RU000A102614','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2792,'RU000A102622','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2793,'RU000A1026E7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2794,'RU000A1026N8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2795,'RU000A1026P3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2796,'RU000A1026M0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2797,'RU000A1026Q1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2798,'RU000A1027A3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2799,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2800,'RU000A1028J2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2801,'RU000A1028K0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2802,'RU000A1029C5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2803,'RU000A1029E1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2804,'RU000A102A64','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2805,'RU000A102A56','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2806,'RU000A1029R3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2807,'RU000A1029Q5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2808,'RU000A1029S1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2809,'RU000A1029W3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2810,'RU000A1029X1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2811,'RU000A102A72','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2812,'RU000A102A80','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2813,'RU000A102A98','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2814,'RU000A102AN3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2815,'RU000A102BE0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2816,'RU000A102BG5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2817,'RU000A102BZ5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2818,'RU000A102C13','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2819,'RU000A102BR2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2820,'RU000A102BS0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2821,'RU000A102C88','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2822,'RU000A102C96','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2823,'RU000A102CA6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2824,'RU000A102D38','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2825,'RU000A102D87','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2826,'RU000A102D53','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2827,'RU000A102D61','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2828,'RU000A102DG1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2829,'RU000A102DF3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2830,'RU000A102DV0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2831,'RU000A102E86','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2832,'RU000A102FJ0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2833,'RU000A102FL6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2834,'RU000A102G76','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2835,'RU000A102GG4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2836,'RU000A102GH2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2837,'RU000A102GL4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2838,'RU000A102GM2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2839,'RU000A102GN0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2840,'RU000A102GP5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2841,'RU000A102GQ3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2842,'RU000A102GR1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2843,'RU000A102GZ4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2844,'RU000A102HH0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2845,'RU000A102HK4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2846,'RU000A102HP3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2847,'RU000A102JU9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2848,'RU000A102JW5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2849,'RU000A102JA1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2850,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2851,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2852,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2853,'RU000A102WA4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2854,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2855,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2856,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2857,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2858,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2859,'RU000A102V69','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2860,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2861,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2862,'RU000A102UC4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2863,'RU000A102RA4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2864,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2865,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2866,'RU000A102RC0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2867,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2868,'RU000A102RD8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2869,'RU000A102SU0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2870,'RU000A102RE6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2871,'RU000A102RG1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2872,'RU000A102SR6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2873,'RU000A102TD4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2874,'RU000A102TH5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2875,'RU000A102VD0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2876,'RU000A102W35','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2877,'RU000A102W43','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2878,'RU000A102W50','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2879,'RU000A102WB2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2880,'RU000A102WC0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2881,'RU000A102X26','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2882,NULL,'Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2883,'RU000A0ZZ0Z6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2884,'RU000A0ZZ3U1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2885,'RU000A0ZZ5U6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2886,'RU000A0ZZ7U2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2887,'RU000A100H44','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2888,'RU000A0ZZAJ9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2889,'RU000A100HM4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2890,'RU000A100LN4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2891,'RU000A100KZ0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2892,'RU000A100KQ9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2893,'RU000A0ZZ992','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2894,'RU000A100L48','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2895,'RU000A100NB5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2896,'RU000A100MZ6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2897,'RU000A100N79','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2898,'RU000A100NV3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2899,'RU000A100NY7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2900,'RU000A100PA2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2901,'RU000A100PX4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2902,'RU000A100PW6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2903,'RU000A100R34','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2904,'RU000A100R83','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2905,'RU000A100R91','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2906,'RU000A100RR2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2907,'RU000A0ZZDM7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2908,'RU000A100S41','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2909,'RU000A100SQ2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2910,'RU000A100TV0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2911,'RU000A100T32','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2912,'RU000A100TP2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2913,'RU000A100TU2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2914,'RU000A0ZZD88','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2915,'RU000A100UY2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2916,'RU000A100XB4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2917,'RU000A100XA6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2918,'RU000A100V87','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2919,'RU000A100WV4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2920,'RU000A0ZZE38','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2921,'RU000A100VT0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2922,'RU000A100VV6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2923,'RU000A100X51','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2924,'RU000A100X36','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2925,'RU000A100YB2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2926,'RU000A100Z83','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2927,'RU000A100Z59','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2928,'RU000A100ZP9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2929,'RU000A100Z75','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2930,'RU000A1010Y9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2931,'RU000A101103','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2932,'RU000A1011F6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2933,'RU000A1011H2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2934,'RU000A0ZZEU8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2935,'RU000A1011K6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2936,'RU000A101327','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2937,'RU000A1013E5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2938,'RU000A1013J4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2939,'RU000A101400','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2940,'RU000A1017N7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2941,'RU000A0ZZFC3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2942,'RU000A1015U6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2943,'RU000A1015V4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2944,'RU000A101657','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2945,'RU000A101640','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2946,'RU000A1016M1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2947,'RU000A1017R8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2948,'RU000A1017Q0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2949,'RU000A0ZZHD7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2950,'RU000A1018P0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2951,'RU000A1019U8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2952,'RU000A1019T0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2953,'RU000A0ZZKS9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2954,'RU000A101CD2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2955,'RU000A101A24','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2956,'RU000A101CX0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2957,'RU000A101E04','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2958,'RU000A101A40','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2959,'RU000A101D62','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2960,'RU000A101DR0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2961,'RU000A0ZZKR1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2962,'RU000A101FQ7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2963,'RU000A101CY8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2964,'RU000A101EL1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2965,'RU000A101EB2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2966,'RU000A101ED8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2967,'RU000A101C48','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2968,'RU000A101C14','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2969,'RU000A101CR2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2970,'RU000A0ZZL54','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2971,'RU000A0ZZMA3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2972,'RU000A0ZZMB1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2973,'RU000A0ZZP19','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2974,'RU000A0ZZP35','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2975,'RU000A0ZZP27','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2976,'RU000A0ZZPE8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2977,'RU000A0ZZQ18','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2978,'RU000A0ZZQK3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2979,'RU000A0ZZRU0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2980,'RU000A0ZZSJ1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2981,'RU000A0ZZSK9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2982,'RU000A0ZZTW2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2983,'RU000A0ZZTX0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2984,'RU000A0ZZUX8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2985,'RU000A0ZZW69','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2986,'RU000A0ZZWX4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2987,'RU000A0ZZWY2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2988,'RU000A0ZZZ41','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2989,'RU000A0ZZY83','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2990,'RU000A1000J1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2991,'RU000A100188','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2992,'RU000A100196','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(2993,'RU000A1001R2','Публичное акционерное общество "Сбербанк России"',20,123,NULL,NULL),
(2994,'RU000A100295','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2995,'RU000A1003G1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2996,'RU000A1003H9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2997,'RU000A100444','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2998,'RU000A100451','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(2999,'RU000A1004M7','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3000,'RU000A1004P0','Публичное акционерное общество "Сбербанк России"',20,123,NULL,NULL),
(3001,'RU000A1004N5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3002,'RU000A100576','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3003,'RU000A100634','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3004,'RU000A1006R1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3005,'RU000A1008A3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3006,'RU000A1007B3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3007,'RU000A1007C1','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3008,'RU000A1007T5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3009,'RU000A100923','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3010,'RU000A100931','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3011,'RU000A100AK3','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3012,'RU000A100BR6','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3013,'RU000A100B57','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3014,'RU000A100BP0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3015,'RU000A100H51','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3016,'RU000A100DL5','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3017,'RU000A100DS0','Публичное акционерное общество "Сбербанк России"',20,123,NULL,NULL),
(3018,'RU000A100FH8','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3019,'RU000A100EB4','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3020,'RU000A100EC2','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3021,'RU000A100FG0','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3022,'RU000A100FC9','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3023,'RU000A100H69','Публичное акционерное общество "Сбербанк России"',20,135,NULL,NULL),
(3024,'RU000A100592','Публичное акционерное общество "Светофор Групп"',8,135,NULL,NULL),
(3025,'RU000A1020W2','Публичное акционерное общество "Светофор Групп"',20,135,NULL,NULL),
(3026,NULL,'Публичное акционерное общество "Северсталь"',20,135,NULL,NULL),
(3027,NULL,'Публичное акционерное общество "Северсталь"',20,135,NULL,NULL),
(3028,'RU0009011126','Публичное акционерное общество "Славнефть - Мегионнефтегаз"',8,135,NULL,NULL),
(3029,'RU0009011134','Публичное акционерное общество "Славнефть - Мегионнефтегаз"',10,135,NULL,NULL),
(3030,'RU0009100895','Публичное акционерное общество "Славнефть-Ярославнефтеоргсинтез"',8,135,NULL,NULL),
(3031,'RU0009101927','Публичное акционерное общество "Славнефть-Ярославнефтеоргсинтез"',10,135,NULL,NULL),
(3032,'RU000A0JXKQ2','Публичное акционерное общество "Совкомбанк"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3033,'RU000A101376','Публичное акционерное общество "Совкомбанк"',20,135,NULL,NULL),
(3034,'RU000A0ET1W4','Публичное акционерное общество "Ставропольэнергосбыт"',8,135,NULL,NULL),
(3035,'RU000A0ET1Z7','Публичное акционерное общество "Ставропольэнергосбыт"',10,135,NULL,NULL),
(3036,'RU000A0DPG67','Публичное акционерное общество "ТНС энерго Воронеж"',8,135,NULL,NULL),
(3037,'RU000A0DPG75','Публичное акционерное общество "ТНС энерго Воронеж"',10,135,NULL,NULL),
(3038,'RU000A0JNJ11','Публичное акционерное общество "ТНС энерго Кубань"',8,135,NULL,NULL),
(3039,'RU000A0D8K33','Публичное акционерное общество "ТНС энерго Марий Эл"',8,135,NULL,NULL),
(3040,'RU000A0D8K41','Публичное акционерное общество "ТНС энерго Марий Эл"',10,135,NULL,NULL),
(3041,'RU000A0ET5A1','Публичное акционерное общество "ТНС энерго Нижний Новгород"',8,135,NULL,NULL),
(3042,'RU000A0ET5B9','Публичное акционерное общество "ТНС энерго Нижний Новгород"',10,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3043,'RU000A0D8PB4','Публичное акционерное общество "ТНС энерго Ростов-на-Дону"',8,135,NULL,NULL),
(3044,'RU000A0D8PC2','Публичное акционерное общество "ТНС энерго Ростов-на-Дону"',10,135,NULL,NULL),
(3045,'RU000A0D8760','Публичное акционерное общество "ТНС энерго Ярославль"',8,135,NULL,NULL),
(3046,'RU000A0D88B3','Публичное акционерное общество "ТНС энерго Ярославль"',10,135,NULL,NULL),
(3047,'RU000A0JWQ45','Публичное акционерное общество "ТРАНСКАПИТАЛБАНК"',22,135,NULL,NULL),
(3048,'RU000A0JTYQ1','Публичное акционерное общество "ТРАНСКАПИТАЛБАНК"',20,135,NULL,NULL),
(3049,'RU0009098123','Публичное акционерное общество "Таганрогский котлостроительный завод "Красный котельщик"',8,135,NULL,NULL),
(3050,'RU0009098131','Публичное акционерное общество "Таганрогский котлостроительный завод "Красный котельщик"',10,135,NULL,NULL),
(3051,'RU000A0D8NG8','Публичное акционерное общество "Тамбовская энергосбытовая компания"',8,135,NULL,NULL),
(3052,'RU000A0D8NH6','Публичное акционерное общество "Тамбовская энергосбытовая компания"',10,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3053,'RU000A0HM5C1','Публичное акционерное общество "Таттелеком"',8,135,NULL,NULL),
(3054,'RU000A0JS1W0','Публичное акционерное общество "Территориальная генерирующая компания №1"',22,135,NULL,NULL),
(3055,'RU000A0JS470','Публичное акционерное общество "Территориальная генерирующая компания №1"',22,135,NULL,NULL),
(3056,'RU000A0JNGS7','Публичное акционерное общество "Территориальная генерирующая компания №2"',8,135,NULL,NULL),
(3057,'RU000A0JNGT5','Публичное акционерное общество "Территориальная генерирующая компания №2"',10,135,NULL,NULL),
(3058,'RU000A0ETZF2','Публичное акционерное общество "Томская распределительная компания"',8,135,NULL,NULL),
(3059,'RU000A0ETZM8','Публичное акционерное общество "Томская распределительная компания"',10,135,NULL,NULL),
(3060,'RU000A0JUGP8','Публичное акционерное общество "ТрансФин-М"',8,135,NULL,NULL),
(3061,'RU000A101EN7','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(3193,NULL,'акционерное общество "Почта России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3062,'RU000A101Q34','Публичное акционерное общество "ТрансФин-М"',20,135,NULL,NULL),
(3063,'RU000A0JWS92','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(3064,'RU000A0JXPK4','Публичное акционерное общество "Транснефть"',20,135,NULL,NULL),
(3065,'RU000A0JWCM0','Публичное акционерное общество "Трубная Металлургическая Компания"',20,135,NULL,NULL),
(3066,'RU000A0HL7A2','Публичное акционерное общество "Туймазинский завод автобетоновозов"',8,135,NULL,NULL),
(3067,'RU000A0JR4D5','Публичное акционерное общество "Тучковский комбинат строительных материалов"',8,135,NULL,NULL),
(3068,'RU0005294775','Публичное акционерное общество "Угольная компания "Южный Кузбасс"',8,135,NULL,NULL),
(3069,'RU0007661302','Публичное акционерное общество "Уралкалий"',8,135,NULL,NULL),
(3070,'RU000A0JPFY2','Публичное акционерное общество "Уральская кузница"',8,135,NULL,NULL),
(3071,NULL,'Публичное акционерное общество "Уральский банк реконструкции и развития"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3072,'RU000A0JR514','Публичное акционерное общество "Фармсинтез"',8,135,NULL,NULL),
(3073,'RU000A0JRFN1','Публичное акционерное общество "Федеральная гидрогенерирующая компания - РусГидро"',22,135,NULL,NULL),
(3074,'RU000A0JRFP6','Публичное акционерное общество "Федеральная гидрогенерирующая компания - РусГидро"',22,135,NULL,NULL),
(3075,'RU000A0JTYJ6','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(3076,'RU000A0JU2K9','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(3077,'RU000A0JU2L7','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(3078,'RU000A0JTYK4','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(3079,'RU000A0JU7S1','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(3080,'RU000A0JUC92','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(3081,'RU000A0JUCA9','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3082,'RU000A0JVCB5','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(3083,'RU000A0JVDD9','Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',22,135,NULL,NULL),
(3084,NULL,'Публичное акционерное общество "Федеральная сетевая компания Единой энергетической системы"',20,135,NULL,NULL),
(3085,'RU0009098990','Публичное акционерное общество "Химпром"',8,135,NULL,NULL),
(3086,'RU0009099006','Публичное акционерное общество "Химпром"',10,135,NULL,NULL),
(3087,'RU000A0JPRX9','Публичное акционерное общество "Центр по перевозке грузов в контейнерах "ТрансКонтейнер"',8,135,NULL,NULL),
(3088,NULL,'Публичное акционерное общество "Центр по перевозке грузов в контейнерах "ТрансКонтейнер"',20,135,NULL,NULL),
(3089,'RU0007665147','Публичное акционерное общество "Центральный телеграф"',8,135,NULL,NULL),
(3090,'RU0007665139','Публичное акционерное общество "Центральный телеграф"',10,135,NULL,NULL),
(3091,'RU000A0JNXF9','Публичное акционерное общество "Челябинский завод профилированного стального настила"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3092,'RU000A0ZZD39','Публичное акционерное общество "Челябинский завод профилированного стального настила"',20,135,NULL,NULL),
(3093,'RU000A100DF7','Публичное акционерное общество "Челябинский завод профилированного стального настила"',20,135,NULL,NULL),
(3094,'RU000A101NJ6','Публичное акционерное общество "Челябинский завод профилированного стального настила"',20,135,NULL,NULL),
(3095,'RU000A0JNST0','Публичное акционерное общество "Челябинский кузнечно-прессовый завод"',8,135,NULL,NULL),
(3096,'RU0007665170','Публичное акционерное общество "Челябинский металлургический комбинат"',8,135,NULL,NULL),
(3097,'RU0009066807','Публичное акционерное общество "Челябинский трубопрокатный завод"',8,135,NULL,NULL),
(3098,'RU000A0B66V1','Публичное акционерное общество "Электроцинк"',8,135,NULL,NULL),
(3099,'RU0004887991','Публичное акционерное общество "Южно-Уральский никелевый комбинат"',8,135,NULL,NULL),
(3100,'RU0007796819','Публичное акционерное общество "Якутская топливно-энергетическая компания"',8,135,NULL,NULL),
(3101,'RU0009257075','Публичное акционерное общество "Якутскэнерго"',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3102,'RU0007796827','Публичное акционерное общество "Якутскэнерго"',10,135,NULL,NULL),
(3103,'RU0009084214','Публичное акционерное общество Банк "Возрождение"',8,135,NULL,NULL),
(3104,'RU0009100127','Публичное акционерное общество Банк "Возрождение"',10,135,NULL,NULL),
(3105,'RU000A0JSQ66','Публичное акционерное общество Банк "Кузнецкий"',8,135,NULL,NULL),
(3106,'RU000A0JU872','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',22,135,NULL,NULL),
(3107,'RU000A1021C2','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3108,'RU000A102861','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3109,'RU000A101T07','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3110,'RU000A102DC0','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3111,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3112,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3113,'RU000A101YL9','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3114,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3115,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3116,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3117,'RU000A0JV3L4','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3118,'RU000A100EW0','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3119,'RU000A100VL7','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3120,'RU000A1013Z0','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3121,'RU000A1017Z1','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3122,'RU000A101GA9','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3123,'RU000A101K06','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3124,'RU000A0JVFS2','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3125,NULL,'Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3126,'RU000A0JVFX2','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3127,'RU000A0JVGJ9','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3128,'RU000A0JVGK7','Публичное акционерное общество Банк "Финансовая Корпорация Открытие"',20,135,NULL,NULL),
(3129,'RU000A0JUCQ5','Публичное акционерное общество Группа компаний "ТНС энерго"',8,135,NULL,NULL),
(3130,'RU000A0JQWC1','Публичное акционерное общество Завод экологической техники и экопитания "ДИОД"',8,135,NULL,NULL),
(3131,'RU000A0JS7V9','Публичное акционерное общество МОСКОВСКИЙ ОБЛАСТНОЙ БАНК',8,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3132,'RU000A0JRPX9','Публичное акционерное общество Научно-производственное объединение "Наука"',8,135,NULL,NULL),
(3133,'RU0009090559','Публичное акционерное общество Объединенные машиностроительные заводы (Группа Уралмаш-Ижора)',10,135,NULL,NULL),
(3134,'RU000A0HHK26','Публичное акционерное общество РОСБАНК',8,135,NULL,NULL),
(3135,'RU000A0JUV81','Публичное акционерное общество РОСБАНК',22,135,NULL,NULL),
(3136,'RU000A0JWZT6','Публичное акционерное общество РОСБАНК',22,135,NULL,NULL),
(3137,'RU000A0ZYMD0','Публичное акционерное общество РОСБАНК',22,135,NULL,NULL),
(3138,'RU000A0ZYH44','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(3139,'RU000A0JS6M0','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(3140,'RU000A0JVWA5','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(3141,'RU000A0JUL67','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3142,'RU000A0JUL91','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(3143,'RU000A0JULA0','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(3144,'RU000A0JULC6','Публичное акционерное общество РОСБАНК',20,135,NULL,NULL),
(3145,NULL,'Публичное акционерное общество РОСБАНК',22,135,NULL,NULL),
(3146,'RU0008010855','Публичное акционерное общество Страховая Компания "Росгосстрах"',8,135,NULL,NULL),
(3147,'RU000A102G92','Публичное акционерное общество коммерческий банк "Центр-инвест"',20,135,NULL,NULL),
(3148,'RU000A0ZZ2U3','Публичное акционерное общество коммерческий банк "Центр-инвест"',20,135,NULL,NULL),
(3149,'RU000A0ZZKP5','Публичное акционерное общество коммерческий банк "Центр-инвест"',20,135,NULL,NULL),
(3150,'RU0006753498','Публичное акционерное общество энергетики и электрификации "Камчатскэнерго"',8,135,NULL,NULL),
(3151,'RU0006753480','Публичное акционерное общество энергетики и электрификации "Камчатскэнерго"',10,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3152,'RU0006758919','Публичное акционерное общество энергетики и электрификации "Магаданэнерго"',8,135,NULL,NULL),
(3153,'RU0006758893','Публичное акционерное общество энергетики и электрификации "Магаданэнерго"',10,135,NULL,NULL),
(3154,'RU0009098255','Публичное акционерное общество энергетики и электрификации "Самараэнерго"',8,135,NULL,NULL),
(3155,'RU0009084495','Публичное акционерное общество энергетики и электрификации "Самараэнерго"',10,135,NULL,NULL),
(3156,'RU0009280465','Публичное акционерное общество энергетики и электрификации "Сахалинэнерго"',8,135,NULL,NULL),
(3157,'RU000A101FK0','РОССИЙСКИЙ НАЦИОНАЛЬНЫЙ КОММЕРЧЕСКИЙ БАНК (публичное акционерное общество)',20,135,NULL,NULL),
(3158,'RU000A100D55','Республика Беларусь в лице Министерства финансов Республики Беларусь',19,135,NULL,NULL),
(3159,'RU000A100D30','Республика Беларусь в лице Министерства финансов Республики Беларусь',19,135,NULL,NULL),
(3160,'RU000A100D63','Республика Беларусь в лице Министерства финансов Республики Беларусь',19,135,NULL,NULL),
(3161,'XS1634369067','Республика Беларусь в лице Министерства финансов Республики Беларусь',19,123,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3162,'XS1634369224','Республика Беларусь в лице Министерства финансов Республики Беларусь',19,123,NULL,NULL),
(3163,'XS1760804184','Республика Беларусь в лице Министерства финансов Республики Беларусь',19,123,NULL,NULL),
(3164,'RU000A100D89','Республика Беларусь в лице Министерства финансов Республики Беларусь',19,135,NULL,NULL),
(3165,'RU000A100D71','Республика Беларусь в лице Министерства финансов Республики Беларусь',19,135,NULL,NULL),
(3166,'RU000A102KF8','СККН Финанс (общество с ограниченной ответственностью)',20,135,NULL,NULL),
(3167,'XS2291914971','СовКом Кэпитал Компания Специального Назначения',19,123,NULL,NULL),
(3168,'XS2010043656','СовКом Кэпитал Компания Специального Назначения',19,123,NULL,NULL),
(3169,'XS2113968148','СовКом Кэпитал Компания Специального Назначения',19,123,NULL,NULL),
(3170,'RU000A0JRTS1','Ураниум Уан Инк (Uranium One Inc.)',19,135,NULL,NULL),
(3171,'RU000A1029A9','Федеральное государственное унитарное предприятие "Росморпорт"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3172,'IE00BNC2D728','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(3173,'IE00BL3DYX33','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(3174,'IE00BQ1Y6480','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(3175,'IE00BL3DYW26','ФинЭкс Фандс айкав (FinEx Funds ICAV), управляющая компания ФинЭкс Инвестмент Менеджмент ЛЛП (FinEx Investment Management LLP)',11,NULL,NULL,NULL),
(3176,'RU000A102MW9','Центральный Банк Российской Федерации',25,135,NULL,NULL),
(3177,'RU000A102Q90','Центральный Банк Российской Федерации',25,135,NULL,NULL),
(3178,'RU000A102SL9','Центральный Банк Российской Федерации',25,135,NULL,NULL),
(3179,'RU000A102YY0','Центральный Банк Российской Федерации',25,135,NULL,NULL),
(3180,NULL,'Центральный Банк Российской Федерации',25,135,NULL,NULL),
(3181,'RU000A0JVZY8','акционерное общество "Почта России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3182,'RU000A0JX2V3','акционерное общество "Почта России"',20,135,NULL,NULL),
(3183,'RU000A0JWGV2','акционерное общество "Почта России"',20,135,NULL,NULL),
(3184,'RU000A0JXRD5','акционерное общество "Почта России"',20,135,NULL,NULL),
(3185,'RU000A0JWTL6','акционерное общество "Почта России"',20,135,NULL,NULL),
(3186,'RU000A0JXS59','акционерное общество "Почта России"',20,135,NULL,NULL),
(3187,'RU000A0JXMP0','акционерное общество "Почта России"',20,135,NULL,NULL),
(3188,'RU000A0ZZ5H3','акционерное общество "Почта России"',20,135,NULL,NULL),
(3189,'RU000A0ZZ5J9','акционерное общество "Почта России"',20,135,NULL,NULL),
(3190,'RU000A100SZ3','акционерное общество "Почта России"',20,135,NULL,NULL),
(3191,'RU000A1008Y3','акционерное общество "Почта России"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3192,'RU000A100UT2','акционерное общество "Почта России"',20,135,NULL,NULL),
(3194,'RU000A1000H5','акционерное общество "РОСНАНО"',20,135,NULL,NULL),
(3195,'RU000A100ER0','акционерное общество "РОСНАНО"',20,135,NULL,NULL),
(3196,'RU000A101EW8','акционерное общество "РОСНАНО"',20,135,NULL,NULL),
(3197,'RU000A100YR8','акционерное общество "РОСНАНО"',20,135,NULL,NULL),
(3198,'RU000A101KK0','акционерное общество "РОСНАНО"',20,135,NULL,NULL),
(3199,'RU000A102HB3','акционерное общество "РОСНАНО"',20,135,NULL,NULL),
(3200,'RU000A0ZZTK7','акционерное общество "ТрансКомплектХолдинг"',20,135,NULL,NULL),
(3201,'RU000A100AZ1','акционерное общество "ТрансКомплектХолдинг"',20,135,NULL,NULL),
(3202,NULL,'акционерное общество "Трансмашхолдинг"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3203,NULL,'акционерное общество "Трансмашхолдинг"',20,135,NULL,NULL),
(3204,'RU000A0DPNQ5','акционерный коммерческий банк "Приморье"  (публичное акционерное общество)',8,135,NULL,NULL),
(3205,'RU000A0JUTB1','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(3206,'RU000A102JM6','государственная корпорация развития "ВЭБ.РФ"',20,135,NULL,NULL),
(3207,'RU000A0JVRM0','общество с ограниченной ответственностью "Балтийский лизинг"',20,135,NULL,NULL),
(3208,'RU000A100JE7','общество с ограниченной ответственностью "Балтийский лизинг"',20,135,NULL,NULL),
(3209,'RU000A101Z66','общество с ограниченной ответственностью "Балтийский лизинг"',20,135,NULL,NULL),
(3210,'RU000A100RQ4','общество с ограниченной ответственностью "ЭкономЛизинг"',20,135,NULL,NULL),
(3211,'RU000A101QC4','общество с ограниченной ответственностью "ЭкономЛизинг"',20,135,NULL,NULL),
(3212,'RU000A101TT2','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3213,'RU000A101Y18','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3214,'RU000A102564','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3215,'RU000A1028U9','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3216,'RU000A102E37','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3217,'RU000A102FE1','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3218,'RU000A102GA7','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3219,'RU000A102S72','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3220,'RU000A0JVB19','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3221,'RU000A0JVB27','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3222,'RU000A0JVKH5','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3223,'RU000A0JX1S1','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3224,'RU000A0JWLU4','открытое акционерное общество "Российские железные дороги"',22,135,NULL,NULL),
(3225,'RU000A0JVW71','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3226,'RU000A0JWD57','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3227,NULL,'открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3228,'RU000A0JTZM7','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3229,'RU000A0JUCG6','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3230,'RU000A0JXJK7','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3231,'RU000A0JU542','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3232,'RU000A0JU7B7','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3233,'RU000A0JVJS4','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3234,'RU000A0JU9M0','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3235,'RU000A0JUX71','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3236,'RU000A0JWHU2','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3237,'RU000A0JTY57','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3238,'RU000A0JUPZ8','открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3239,NULL,'открытое акционерное общество "Российские железные дороги"',20,135,NULL,NULL),
(3240,'RU000A0ZZG02','публичное акционерное общество "Группа компаний "Самолет"',8,135,NULL,NULL),
(3241,'RU000A0JWYJ0','публичное акционерное общество "Группа компаний "Самолет"',22,135,NULL,NULL),
(3242,'RU000A0JXRF0','публичное акционерное общество "Группа компаний "Самолет"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3243,'RU000A0ZYEM8','публичное акционерное общество "Группа компаний "Самолет"',20,135,NULL,NULL),
(3244,'RU000A0ZYME8','публичное акционерное общество "Группа компаний "Самолет"',20,135,NULL,NULL),
(3245,'RU000A0ZZZZ2','публичное акционерное общество "Группа компаний "Самолет"',20,135,NULL,NULL),
(3246,'RU000A100Q50','публичное акционерное общество "Группа компаний "Самолет"',20,135,NULL,NULL),
(3247,'RU000A100QA0','публичное акционерное общество "Группа компаний "Самолет"',20,135,NULL,NULL),
(3248,'RU000A100YG1','публичное акционерное общество "Группа компаний "Самолет"',20,135,NULL,NULL),
(3249,'RU0006753613','публичное акционерное общество "Ковровский механический завод"',8,135,NULL,NULL),
(3250,NULL,'публичное акционерное общество "НОВАТЭК"',20,135,NULL,NULL),
(3251,NULL,'публичное акционерное общество "НОВАТЭК"',20,135,NULL,NULL),
(3252,NULL,'публичное акционерное общество "НОВАТЭК"',20,135,NULL,NULL);
INSERT INTO investing.asset (id,isin,"name",type_id,currency_id,fund_id,sector_id) VALUES
(3253,NULL,'публичное акционерное общество "НОВАТЭК"',20,135,NULL,NULL),
(3254,'RU0006752979','публичное акционерное общество "Научно-производственная корпорация "Иркут"',8,135,NULL,NULL),
(3255,'RU000A0JUA45','публичное акционерное общество "Научно-производственная корпорация "Иркут"',20,135,NULL,NULL),
(3256,NULL,'публичное акционерное общество "Научно-производственная корпорация "Иркут"',20,135,NULL,NULL),
(3257,NULL,'публичное акционерное общество "Научно-производственная корпорация "Иркут"',20,135,NULL,NULL),
(3258,NULL,'публичное акционерное общество "Научно-производственная корпорация "Иркут"',20,135,NULL,NULL),
(3259,'RU000A102EF1','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL),
(3260,'RU000A102EE4','публичное акционерное общество "Нефтяная компания "Роснефть"',20,135,NULL,NULL);