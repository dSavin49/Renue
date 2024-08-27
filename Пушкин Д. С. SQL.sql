1 Задание.
Вывести среднюю заработную плату тестировщиков по проектам «ПУМЧД» и «ГИС КАП».

Решение:
SELECT projects.project_name AS Название_проекта, titles.titel_name AS Название_должнисти, round(AVG(salary), 2) AS Зарплата FROM positions
INNER JOIN titles ON positions.title_id = titles.id
INNER JOIN projects ON positions.project_id = projects.project_id
WHERE projects.project_name = 'ГИС КАП' OR projects.project_name = 'ПУМЧД'
GROUP BY projects.project_name, titles.titel_name;

2 Задание.
Вывести проекты, на которых числятся больше 10 сотрудников.

Решение:

SELECT projects.project_name AS Название_проекта, COUNT(employee_id) AS Количество_сотрудников_на_проекте FROM positions
full outer JOIN projects ON positions.project_id = projects.project_id
GROUP BY projects.project_name HAVING COUNT(*) > 10;