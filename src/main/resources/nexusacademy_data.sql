INSERT INTO `holidays` (`day`,`reason`,`type`,`created_at`, `created_by`)
 VALUES (' Jan 1 ','New Year''s Day','FESTIVAL',CURDATE(),'DBA');

INSERT INTO `holidays` (`day`,`reason`,`type`,`created_at`, `created_by`)
 VALUES (' Mar 4 ','MahShivaRatri','FESTIVAL',CURDATE(),'DBA');

INSERT INTO `holidays` (`day`,`reason`,`type`,`created_at`, `created_by`)
 VALUES (' Mar 26 ','RamNavami','FESTIVAL',CURDATE(),'DBA');

INSERT INTO `holidays` (`day`,`reason`,`type`,`created_at`, `created_by`)
 VALUES (' Dec 25 ','Christmas','FESTIVAL',CURDATE(),'DBA');

INSERT INTO `holidays` (`day`,`reason`,`type`,`created_at`, `created_by`)
 VALUES (' Jan 26 ','Republic Day','NATIONAL_HOLIDAY',CURDATE(),'DBA');

INSERT INTO `holidays` (`day`,`reason`,`type`,`created_at`, `created_by`)
 VALUES (' Aug 15 ','Independence Day','NATIONAL_HOLIDAY',CURDATE(),'DBA');

INSERT INTO `holidays` (`day`,`reason`,`type`,`created_at`, `created_by`)
 VALUES (' Oct 2 ','Gandhi Jayanti','NATIONAL_HOLIDAY',CURDATE(),'DBA');

INSERT INTO `roles` (`role_name`,`created_at`, `created_by`)
  VALUES ('ADMIN',CURDATE(),'DBA');

INSERT INTO `roles` (`role_name`,`created_at`, `created_by`)
  VALUES ('STUDENT',CURDATE(),'DBA');

DELETE FROM person where email='admin@nexusacademy.com';

INSERT INTO `person` (`name`,`email`,`mobile_number`,`pwd`,`role_id`,`created_at`, `created_by`)
  VALUES ('Admin','admin@nexusacademy.com','3443434343','$2a$10$XhU4UcSxDPb5G0I0fT/CZ.Lfj2VW2fkLkUP5cOEM.xM8EzyUQXaD2', 1 ,CURDATE(),'DBA');

-- Insert Classes
-- INSERT IGNORE INTO `class` (`name`, `created_at`, `created_by`)
--   VALUES ('Class 1 - Beginners', CURDATE(), 'DBA');
-- INSERT IGNORE INTO `class` (`name`, `created_at`, `created_by`)
--   VALUES ('Class 2 - Intermediate', CURDATE(), 'DBA');
-- INSERT IGNORE INTO `class` (`name`, `created_at`, `created_by`)
--   VALUES ('Class 3 - Advanced', CURDATE(), 'DBA');
--
-- -- Insert Courses
-- INSERT IGNORE INTO `courses` (`name`, `fees`, `created_at`, `created_by`)
--   VALUES ('Mathematics', '5000', CURDATE(), 'DBA');
-- INSERT IGNORE INTO `courses` (`name`, `fees`, `created_at`, `created_by`)
--   VALUES ('Science', '4500', CURDATE(), 'DBA');
-- INSERT IGNORE INTO `courses` (`name`, `fees`, `created_at`, `created_by`)
--   VALUES ('English Literature', '4000', CURDATE(), 'DBA');
-- INSERT IGNORE INTO `courses` (`name`, `fees`, `created_at`, `created_by`)
--   VALUES ('Computer Science', '6000', CURDATE(), 'DBA');
-- INSERT IGNORE INTO `courses` (`name`, `fees`, `created_at`, `created_by`)
--   VALUES ('Music', '3500', CURDATE(), 'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Anubhab','2176436587','zanubhab@gmail.com','Regarding a job','Wanted to join as teacher','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Dipayan','3412654387','zdipayan@hotmail.com','Course Admission','Wanted to join a course','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Subhadeep','8547643673','kSubhadeep@yahoo.com','Course Review','Review of Development course','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Shyam','4365328776','gshyam@gmail.com','Admission Query','Need to talk about admission','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Debarin','5465765453','debarin@gmail.com','Holiday Query','Query on upcoming holidays','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Doya Paul','3987463827','paul@gmail.com','Child Scholarship','Can my child get scholarship?','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Souvik Sen','4568764801','souvik@gmail.com','Need Admission','My son need an admission','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Nirmal Biswas','4321768902','biswas.nirmal@gmail.com','Course feedback','Music course is good','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Bina Modi','9854438719','modi@gmail.com','Correct Date of Birth','My Child DOB needs to be corrected','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Subodh Khan','6545433254','cKhan@gmail.com','Transport Query','Is Transport provided?','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Virat Kohli','4678783434','gKohli@yahoo.com','Progress report','Please send progress report','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Rohit Sharma','1243563254','hSharma@gmail.com','Certificate Query','Need Certificate hard copy','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Shuvam Dube','2312231223','mDube@gmail.com','Food feedback','Food quality can be improved','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Abhishek Sharma','3445235667','iAbhishek@gmail.com','Traffic Complaint','Traffic around school can be controlled','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Harry Kane','4556121265','jarvisHarry@hotmail.com','Study Tour','Study tour details needed','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Lionel Messi','2367784512','goatMessi@hotmail.com','Vaccination Support','Vaccination center in the school','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Cris Ronaldo','8990678900','cris1000@gmail.com','Course fees','Pls share fees of music course','Open',CURDATE(),'DBA');

INSERT INTO `contact_msg` (`name`,`mobile_num`,`email`,`subject`,`message`,`status`,`created_at`, `created_by`)
  VALUES ('Neymar Jr','4556127834','talentNeymar@gmail.com','Games schedule','Provide Summer games schedule','Open',CURDATE(),'DBA');

