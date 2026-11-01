-- Завдання:
--      Порахувати успішність студентів залежно від року навчання
--      Очікувані колонки результату:
--          - рік навчання студентів (student_year)
--          - середній бал за рік (avg_year_grade) - округлити результат до 2 знаків після коми
--      Результат відсортувати за:
--          - роком навчання (зростання)

-- Рішення:

select
    sg.start_year          as student_year,
    round(avg(e.grade), 2) as avg_year_grade
from student_group sg
    join student_group_assignment sga using (group_id)
    join student s using (student_id)
    join enrolment e using (student_id)
group by sg.start_year
order by student_year asc;

