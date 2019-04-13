CREATE TABLE department (
  dept_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  dept_name VARCHAR(50) NOT NULL,
  PRIMARY KEY  (dept_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE course (
  course_id VARCHAR(20) NOT NULL,
  course_name VARCHAR(50) NOT NULL,
  dept_id SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY  (course_id),
  CONSTRAINT `fk_course_department` FOREIGN KEY (dept_id) REFERENCES department (dept_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE instructor (
  instructor_id MEDIUMINT UNSIGNED NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  dept_id SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY  (instructor_id),
  CONSTRAINT `fk_instructor_department` FOREIGN KEY (dept_id) REFERENCES department (dept_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE department_head (
  dept_id SMALLINT UNSIGNED NOT NULL,
  instructor_id MEDIUMINT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (dept_id,instructor_id),
  CONSTRAINT fk_department_head_department FOREIGN KEY (dept_id) REFERENCES department (dept_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_department_head_instructor FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE course_instructor (
  course_id VARCHAR(20) NOT NULL,
  instructor_id MEDIUMINT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (course_id,instructor_id),
  CONSTRAINT fk_course_instructor_course FOREIGN KEY (course_id) REFERENCES course (course_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_course_instructor_instructor FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE student (
  student_id VARCHAR(20) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  PRIMARY KEY  (student_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE course_student (
  course_id VARCHAR(20) NOT NULL,
  student_id VARCHAR(20) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (course_id,student_id),
  CONSTRAINT fk_course_student_course FOREIGN KEY (course_id) REFERENCES course (course_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_course_student_student FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET AUTOCOMMIT=0;
INSERT INTO department VALUES (101,'Computer Science'),
(201,'Math'),
(301,'History')

INSERT INTO course VALUES ('CS101','Intro Java',101),
('CS102','Web Programming',101),
('CS103','Intro Database',101),
('MA101','College Algebra',201),
('MA102','Statistics',201),
('MA103','Calculus',201),
('HS101','European History',301),
('HS102','American History',301),
('HS103','History of Roman Empire',301)

INSERT INTO instructor VALUES (12345,'Haddad','Victoria',101),
(22333,'Hufe','Mark',101),
(65432,'Voyton','Adam',101),
(99999,'Einstein','Albert',201),
(90210,'Edison','Thomas',201),
(73654,'Aldrin','Buzz',201),
(74747,'Gibbon','Edward',301),
(87776,'Piketty','Thomas',301),
(19703,'Goolsbee','Austin',301)

INSERT INTO department_head VALUES (101,12345,default),
(201,99999,default),
(301,74747,default)

INSERT INTO course_instructor VALUES ('CS101',12345,default),
('CS102',12345,default),
('CS103',22333,default),
('MA101',99999,default),
('MA102',99999,default),
('MA103',99999,default),
('HS101',87776,default),
('HS102',19703,default),
('HS103',74747,default)

INSERT INTO student VALUES ('W99001001','Attia','Ayman'),
('W99002002','Avetisyan','Greg'),
('W99003003','Bates','Idalys'),
('W99004004','Branda','Shea'),
('W99005005','Carlson','Ryan'),
('W99006006','Cherepes','Thomasina'),
('W99007007','Coffee','Brian'),
('W99008008','DeGenaro','Matthew'),
('W99009009','Diaz','Erika'),
('W99010010','DiLeonardo','Donato'),
('W99011011','Do','Xuan'),
('W99012012','Fonticoba','Evan'),
('W99013013','Giannola','Christian'),
('W99014014','Hedenberg','Brandon'),
('W99015015','Irvin','Natasha'),
('W99016016','Kaminski','Kyle'),
('W99017017','Kimbrough','Quran'),
('W99018018','Lobianco','Christopher'),
('W99019019','Massing','Joseph'),
('W99020020','Nguyen','Dung'),
('W99021021','Olt','Adam'),
('W99022022','Parikh','Nikhil'),
('W99023023','Perez','Odilon'),
('W99024024','Reyta','Sean'),
('W99025025','Tanteo','Robert'),
('W99026026','Wen','Yehui'),
('W99027027','Woods','Lester'),
('W99028028','Wylie','Jason'),
('W99029029','Zhang','Alan')

INSERT INTO course_student VALUES ('CS101','W99001001',default),
('CS101','W99002002',default),
('CS101','W99003003',default),
('CS101','W99004004',default),
('CS102','W99005005',default),
('CS102','W99006006',default),
('CS102','W99007007',default),
('CS102','W99008008',default),
('CS102','W99009009',default),
('CS103','W99010010',default),
('CS103','W99011011',default),
('CS103','W99012012',default),
('CS103','W99013013',default),
('CS103','W99014014',default),
('CS103','W99015015',default),
('MA101','W99016016',default),
('MA101','W99017017',default),
('MA101','W99018018',default),
('MA102','W99019019',default),
('MA102','W99020020',default),
('MA102','W99021021',default),
('MA102','W99022022',default),
('MA103','W99023023',default),
('MA103','W99024024',default),
('MA103','W99025025',default),
('MA103','W99026026',default),
('HS101','W99027027',default),
('HS102','W99028028',default),
('HS103','W99029029',default)

--select ci.*, c.course_name, i.last_name, i.first_name from course_instructor ci join course c on ci.course_id=c.course_id join instructor i on ci.instructor_id=i.instructor_id
--select cs.*, c.course_name, s.last_name, s.first_name from course_student cs join course c on cs.course_id=c.course_id join student s on cs.student_id=s.student_id order by cs.student_id
--select dh.*, d.dept_name, i.last_name, i.first_name from department_head dh join department d on dh.dept_id=d.dept_id join instructor i on dh.instructor_id=i.instructor_id

--INSERT INTO student VALUES ('W99099099','Studentlast','Studentfirst')

