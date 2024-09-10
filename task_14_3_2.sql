-- Показать ФИО всех студентов с минимальной оценкой в указанном диапазоне
SELECT [ФИО студента]
FROM [Оценки студентов]
WHERE  [Средняя оценка за год по всем предметам] > 3.6 AND
[Средняя оценка за год по всем предметам] < 4.2;

-- Показать информацию о студентах, которым исполнилось 20 лет
SELECT *
FROM [Оценки студентов]
WHERE DATEDIFF(year, [Дата рожденья], GETDATE()) >= 20;

-- Показать информацию о студентах с возрастом в указанном диапазоне
SELECT *
FROM [Оценки студентов]
WHERE DATEDIFF(year, [Дата рожденья], GETDATE()) >= 20 AND
DATEDIFF(year, [Дата рожденья], GETDATE()) <= 25;

-- Показать информацию о студентах с конкретным именем. Например, показать студентов с именем Борис
SELECT *
FROM [Оценки студентов]
WHERE [ФИО студента] LIKE '%Борис%';

-- Показать информацию о студентах, в чьем номере встречаются три семерки;
SELECT *
FROM [Оценки студентов]
WHERE [Контактный телефон] LIKE '%777%';

-- Показать электронные адреса студентов, начинающихся с конкретной буквы
SELECT [Электронный адрес]
FROM [Оценки студентов]
WHERE [Электронный адрес] LIKE 'p%';
