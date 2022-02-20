--1. ������� ��� ���� � ��� ������
SELECT * FROM students;

--2. ������� ���� ��������� � �������
SELECT name FROM students;

--3. ������� ������ Id �������������
SELECT Id FROM students;

--4. ������� ������ ��� �������������
SELECT name FROM students;
 
--5. ������� ������ email �������������
SELECT email FROM students;
 
--6. ������� ��� � email �������������
SELECT name,email FROM students;

--7. ������� id, ���, email � ���� �������� �������������
SELECT Id,name,email,created_on FROM students;

--8. ������� ������������� ��� password 12333
SELECT name FROM students where password = '12333';

--9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
SELECT name FROM students where created_on  = '2021-03-26 00:00:00';
 
--10. ������� ������������� ��� � ����� ���� ����� ����
SELECT name FROM students where name like '%Anna%';

--11. ������� ������������� ��� � ����� � ����� ���� 8
SELECT name FROM students where name like '%8';

--12. ������� ������������� ��� � ����� � ���� ����� �
SELECT name FROM students where name like '%a%';

--13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
SELECT name FROM students where created_on  = '2021-07-12 00:00:00';

--14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
SELECT name FROM students where created_on  = '2021-07-12 00:00:00' and password = '1m313';

--15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
SELECT name FROM students where created_on  = '2021-07-12 00:00:00' and name like '%Andrey%';

--16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
SELECT name FROM students where created_on  = '2021-07-12 00:00:00' and name like '%8%';

--17. ������� ������������ � ������� id ����� 110
SELECT name FROM students where Id  = 110;

--18. ������� ������������ � ������� id ����� 153
SELECT name FROM students where Id  = 153;

--19. ������� ������������ � ������� id ������ 140
SELECT name FROM students where Id  > 140;

--20. ������� ������������ � ������� id ������ 130
SELECT name FROM students where Id  < 130;

--21. ������� ������������ � ������� id ������ 127 ��� ������ 188
SELECT name FROM students where Id  < 127 or Id > 188;

--22. ������� ������������ � ������� id ������ ���� ����� 137
SELECT name FROM students where Id  <= 137;

--23. ������� ������������ � ������� id ������ ���� ����� 137
SELECT name FROM students where Id  >= 137;

--24. ������� ������������ � ������� id ������ 180 �� ������ 190
SELECT name FROM students where Id  > 180 AND Id < 190;

--25. ������� ������������ � ������� id ����� 180 � 190
--������������
SELECT name FROM students where Id  between 180 and 190;
--�������������
SELECT name FROM students where Id  between 181 and 189;

--26. ������� ������������� ��� password ����� 12333, 1m313, 123313
SELECT name FROM students where password  in ('12333','1m313','123313');

--27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT name FROM students where created_on  in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

--28. ������� ����������� id
SELECT min(Id) FROM students;

--29. ������� ������������.
SELECT max(Id) FROM students;

--30. ������� ���������� �������������
SELECT count(id) FROM students;

--31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
SELECT Id,name,created_on FROM students order BY created_on;

--32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
SELECT Id,name,created_on FROM students order BY created_on desc;