SET NAMES utf8mb4;
USE ruts;

DROP TABLE IF EXISTS study_plans;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS careers;
DROP TABLE IF EXISTS contact_info;
DROP TABLE IF EXISTS curriculums;

CREATE TABLE curriculums (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_th TEXT,
    name_en TEXT,
    degree_full_th TEXT,
    degree_short_th TEXT,
    degree_full_en TEXT,
    degree_short_en TEXT,
    total_credits TEXT,
    format TEXT,
    type TEXT,
    language TEXT,
    admission TEXT,
    collaboration TEXT,
    graduation TEXT,
    study_plan_name TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE careers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title_th VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE staff (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    position VARCHAR(255),
    specialization TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE study_plans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(50),
    course_name VARCHAR(255),
    credits INT,
    year INT,
    semester INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE contact_info (
    id INT PRIMARY KEY,
    address TEXT,
    phone VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO curriculums (id, name_th, name_en, degree_full_th, degree_short_th, degree_full_en, degree_short_en, total_credits, format, type, language, admission, collaboration, graduation, study_plan_name)
VALUES (1, 
'หลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมคอมพิวเตอร์', 
'Bachelor of Engineering Program in Computer Engineering', 
'วิศวกรรมศาสตรบัณฑิต (วิศวกรรมคอมพิวเตอร์)', 
'วศ.บ. (วิศวกรรมคอมพิวเตอร์)', 
'Bachelor of Engineering (Computer Engineering)', 
'B.Eng. (Computer Engineering)', 
'ไม่น้อยกว่า 130 หน่วยกิต',
'หลักสูตรระดับปริญญาตรี หลักสูตร 4 ปี',
'หลักสูตรทางวิชาชีพ',
'ภาษาไทยและภาษาอังกฤษ โดยใช้ภาษาอังกฤษไม่น้อยกว่าร้อยละ 50 ของทุกรายวิชาในหมวดวิชาเฉพาะ',
'รับนักศึกษาไทย และ/หรือ นักศึกษาต่างชาติที่เข้าใจภาษาไทยเป็นอย่างดี',
'เป็นหลักสูตรเฉพาะของมหาวิทยาลัย',
'ให้ปริญญาเพียงสาขาวิชาเดียว',
'แผนการศึกษาหลักสูตรวิศวกรรมศาสตรบัณฑิต สาขาวิชาวิศวกรรมคอมพิวเตอร์');

INSERT INTO contact_info (id, address, phone) 
VALUES (1, 'คณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีราชมงคลศรีวิชัย เลขที่ 2/4 ถ.ราชดำเนินนอก ต.บ่อยาง อ.เมือง จ.สงขลา 90000', '0-7431-7103 ต่อ 0');

INSERT INTO careers (title_th) VALUES 
('วิศวกรคอมพิวเตอร์'), 
('วิศวกรระบบเครือข่ายคอมพิวเตอร์'), 
('วิศวกรระบบควบคุม'), 
('วิศวกรซอฟต์แวร์'), 
('นักพัฒนาแอปพลิเคชันบนเว็บและอุปกรณ์เคลื่อนที่'), 
('นักวิชาการคอมพิวเตอร์'), 
('อาชีพอิสระด้านคอมพิวเตอร์'),
('อาจารย์ประจำหลักสูตร'),
('บุคลากรประจำหลักสูตรสาขาวิชาวิศวกรรมคอมพิวเตอร์');

INSERT INTO staff (name, position, specialization) VALUES
('ผศ.ไชยยะ ธนพัฒน์ศิริ', 'ผู้ช่วยศาสตราจารย์', 'วิศวกรรมคอมพิวเตอร์, ระบบเครือข่าย'),
('ผศ.ดร.ประเสริฐ นนทกาญจน์', 'ผู้ช่วยศาสตราจารย์', 'วิศวกรรมไฟฟ้า, ระบบควบคุม'),
('ผศ.ดร.จารุวัฒน์ เจริญจิต', 'ผู้ช่วยศาสตราจารย์', 'วิศวกรรมคอมพิวเตอร์, ปัญญาประดิษฐ์');

INSERT INTO study_plans (course_code, course_name, credits, year, semester) VALUES
('04-621-101', 'Computer Programming', 3, 1, 1),
('04-621-102', 'Digital Logic Design', 3, 1, 2),
('04-621-201', 'Data Structures and Algorithms', 3, 2, 1);
