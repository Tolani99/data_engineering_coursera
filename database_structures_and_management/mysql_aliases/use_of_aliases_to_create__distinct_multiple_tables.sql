select s.StarterName, s.Cost, c.CourseName, c.Cost from Courses AS c, Starters AS s where c.Cost < 12 AND s.Cost < 5;
