CREATE PROCEDURE personalHobbies()
BEGIN
  SELECT name FROM people_hobbies
  WHERE INSTR(hobbies, 'sports') AND INSTR(hobbies, 'reading');
END
