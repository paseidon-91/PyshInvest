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
