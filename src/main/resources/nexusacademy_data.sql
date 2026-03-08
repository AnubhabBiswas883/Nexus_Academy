-- PostgreSQL Data for Nexus Academy

-- Holidays
INSERT INTO holidays (day, reason, type, created_at, created_by)
  VALUES (' Jan 1 ','New Year''s Day','FESTIVAL', CURRENT_DATE, 'DBA')
  ON CONFLICT (day) DO NOTHING;

INSERT INTO holidays (day, reason, type, created_at, created_by)
  VALUES (' Mar 4 ','MahShivaRatri','FESTIVAL', CURRENT_DATE, 'DBA')
  ON CONFLICT (day) DO NOTHING;

INSERT INTO holidays (day, reason, type, created_at, created_by)
  VALUES (' Mar 26 ','RamNavami','FESTIVAL', CURRENT_DATE, 'DBA')
  ON CONFLICT (day) DO NOTHING;

INSERT INTO holidays (day, reason, type, created_at, created_by)
  VALUES (' Dec 25 ','Christmas','FESTIVAL', CURRENT_DATE, 'DBA')
  ON CONFLICT (day) DO NOTHING;

INSERT INTO holidays (day, reason, type, created_at, created_by)
  VALUES (' Jan 26 ','Republic Day','NATIONAL_HOLIDAY', CURRENT_DATE, 'DBA')
  ON CONFLICT (day) DO NOTHING;

INSERT INTO holidays (day, reason, type, created_at, created_by)
  VALUES (' Aug 15 ','Independence Day','NATIONAL_HOLIDAY', CURRENT_DATE, 'DBA')
  ON CONFLICT (day) DO NOTHING;

INSERT INTO holidays (day, reason, type, created_at, created_by)
  VALUES (' Oct 2 ','Gandhi Jayanti','NATIONAL_HOLIDAY', CURRENT_DATE, 'DBA')
  ON CONFLICT (day) DO NOTHING;

-- Roles
INSERT INTO roles (role_name, created_at, created_by)
  SELECT 'ADMIN', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM roles WHERE role_name = 'ADMIN');

INSERT INTO roles (role_name, created_at, created_by)
  SELECT 'STUDENT', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM roles WHERE role_name = 'STUDENT');

-- Admin user
DELETE FROM person WHERE email = 'admin@nexusacademy.com';

INSERT INTO person (name, email, mobile_number, pwd, role_id, created_at, created_by)
  VALUES ('Admin', 'admin@nexusacademy.com', '3443434343', '$2a$10$XhU4UcSxDPb5G0I0fT/CZ.Lfj2VW2fkLkUP5cOEM.xM8EzyUQXaD2', 1, CURRENT_DATE, 'DBA');

-- Classes
INSERT INTO class (name, created_at, created_by)
  SELECT 'Class 1 - Beginners', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM class WHERE name = 'Class 1 - Beginners');

INSERT INTO class (name, created_at, created_by)
  SELECT 'Class 2 - Intermediate', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM class WHERE name = 'Class 2 - Intermediate');

INSERT INTO class (name, created_at, created_by)
  SELECT 'Class 3 - Advanced', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM class WHERE name = 'Class 3 - Advanced');

-- Courses
INSERT INTO courses (name, fees, created_at, created_by)
  SELECT 'Mathematics', '5000', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM courses WHERE name = 'Mathematics');

INSERT INTO courses (name, fees, created_at, created_by)
  SELECT 'Science', '4500', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM courses WHERE name = 'Science');

INSERT INTO courses (name, fees, created_at, created_by)
  SELECT 'English Literature', '4000', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM courses WHERE name = 'English Literature');

INSERT INTO courses (name, fees, created_at, created_by)
  SELECT 'Computer Science', '6000', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM courses WHERE name = 'Computer Science');

INSERT INTO courses (name, fees, created_at, created_by)
  SELECT 'Music', '3500', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM courses WHERE name = 'Music');

-- Contact Messages (sample data)
INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Anubhab', '2176436587', 'zanubhab@gmail.com', 'Regarding a job', 'Wanted to join as teacher', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'zanubhab@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Dipayan', '3412654387', 'zdipayan@hotmail.com', 'Course Admission', 'Wanted to join a course', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'zdipayan@hotmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Subhadeep', '8547643673', 'kSubhadeep@yahoo.com', 'Course Review', 'Review of Development course', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'kSubhadeep@yahoo.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Shyam', '4365328776', 'gshyam@gmail.com', 'Admission Query', 'Need to talk about admission', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'gshyam@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Debarin', '5465765453', 'debarin@gmail.com', 'Holiday Query', 'Query on upcoming holidays', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'debarin@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Doya Paul', '3987463827', 'paul@gmail.com', 'Child Scholarship', 'Can my child get scholarship?', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'paul@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Souvik Sen', '4568764801', 'souvik@gmail.com', 'Need Admission', 'My son need an admission', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'souvik@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Nirmal Biswas', '4321768902', 'biswas.nirmal@gmail.com', 'Course feedback', 'Music course is good', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'biswas.nirmal@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Bina Modi', '9854438719', 'modi@gmail.com', 'Correct Date of Birth', 'My Child DOB needs to be corrected', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'modi@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Subodh Khan', '6545433254', 'cKhan@gmail.com', 'Transport Query', 'Is Transport provided?', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'cKhan@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Virat Kohli', '4678783434', 'gKohli@yahoo.com', 'Progress report', 'Please send progress report', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'gKohli@yahoo.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Rohit Sharma', '1243563254', 'hSharma@gmail.com', 'Certificate Query', 'Need Certificate hard copy', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'hSharma@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Shuvam Dube', '2312231223', 'mDube@gmail.com', 'Food feedback', 'Food quality can be improved', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'mDube@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Abhishek Sharma', '3445235667', 'iAbhishek@gmail.com', 'Traffic Complaint', 'Traffic around school can be controlled', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'iAbhishek@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Harry Kane', '4556121265', 'jarvisHarry@hotmail.com', 'Study Tour', 'Study tour details needed', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'jarvisHarry@hotmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Lionel Messi', '2367784512', 'goatMessi@hotmail.com', 'Vaccination Support', 'Vaccination center in the school', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'goatMessi@hotmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Cris Ronaldo', '8990678900', 'cris1000@gmail.com', 'Course fees', 'Pls share fees of music course', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'cris1000@gmail.com');

INSERT INTO contact_msg (name, mobile_num, email, subject, message, status, created_at, created_by)
  SELECT 'Neymar Jr', '4556127834', 'talentNeymar@gmail.com', 'Games schedule', 'Provide Summer games schedule', 'Open', CURRENT_DATE, 'DBA'
  WHERE NOT EXISTS (SELECT 1 FROM contact_msg WHERE email = 'talentNeymar@gmail.com');
