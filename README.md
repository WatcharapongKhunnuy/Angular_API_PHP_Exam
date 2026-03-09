# RUTS-036: ระบบจัดการหลักสูตรวิศวกรรมคอมพิวเตอร์ (มทร.ศรีวิชัย)

โปรเจคนี้เป็นส่วนหนึ่งของการเรียนการสอน/การสอบ โดยการสร้างระบบ Frontend ด้วย **Angular 21** เชื่อมต่อกับ Backend REST API ด้วย **Node-RED** และจัดเก็บข้อมูลใน **MySQL 8.0** ทั้งหมดทำงานอยู่บนระบบคอนเทนเนอร์ **Docker**

## 🚀 เทคโนโลยีที่ใช้ (Tech Stack)
- **Frontend:** Angular 21 (Standalone Components, Signals)
- **Backend:** Node-RED (RESTful API Management)
- **Database:** MySQL 8.0 (รองรับภาษาไทย utf8mb4)
- **Database Tool:** phpMyAdmin (สำหรับการจัดการฐานข้อมูลผ่านหน้าเว็บ)
- **Deployment:** Docker & Docker Compose

## ✨ คุณสมบัติของระบบ (Features)
- **ระบบแสดงผลข้อมูลหลักสูตร (View Mode):** แสดงรายละเอียดหลักสูตรวิศวกรรมคอมพิวเตอร์ครบถ้วน (ชื่อปริญญา, หน่วยกิต, แผนการเรียน, รายชื่ออาจารย์)
- **ระบบจัดการข้อมูล (Admin Mode):** 
  - สามารถเปิดโหมดแก้ไขข้อมูลเพื่อจัดการเนื้อหาได้ทุกส่วนแบบ Real-time
  - **CRUD อาจารย์:** เพิ่ม, แก้ไข, และลบรายชื่ออาจารย์ประจำหลักสูตร
  - **CRUD แผนการเรียน:** เพิ่ม, แก้ไข, และลบรายวิชาในแต่ละปี/เทอม
  - **CRUD อาชีพ:** จัดการรายการอาชีพที่สามารถประกอบได้
  - **Curriculum & Contact:** แก้ไขข้อมูลหลักของหลักสูตรและช่องทางติดต่อได้โดยตรง
- **รองรับภาษาไทย 100%:** แก้ปัญหาตัวอักษรเพี้ยนด้วยการบังคับ Encoding UTF-8 ทั้งระบบ

## 🛠️ วิธีการติดตั้งและใช้งาน
### 1. การเตรียมความพร้อม
- ติดตั้ง [Docker Desktop](https://www.docker.com/products/docker-desktop/) ในเครื่องของคุณ

### 2. รันระบบด้วย Docker Compose
เปิด Terminal ในโฟลเดอร์โปรเจคและรันคำสั่ง:
```powershell
docker-compose up -d --build
```

### 3. ตั้งค่า API ใน Node-RED (ทำเพียงครั้งแรก)
1. เข้าไปที่: [http://localhost:1880](http://localhost:1880)
2. เลือกเมนู **Import** (มุมขวาบน)
3. เลือกไฟล์ `nodered-flows.json` จากในโปรเจค
4. กดปุ่ม **Deploy**

### 4. เข้าใช้งานหน้าเว็บ
- **Frontend:** [http://localhost](http://localhost) (กดปุ่มสีเหลืองด้านบนเพื่อเข้าโหมดแก้ไข)
- **phpMyAdmin:** [http://localhost:8080](http://localhost:8080) (User: `root`, Pass: `rootpassword`)

## 📊 โครงสร้างฐานข้อมูล (Database Schema)
ฐานข้อมูลชื่อ `ruts` ประกอบด้วยตาราง:
- `curriculums`: ข้อมูลหลักสูตรและปริญญา
- `staff`: รายชื่อบุคลากร
- `study_plans`: แผนการศึกษาและรายวิชา
- `careers`: อาชีพที่ประกอบได้
- `contact_info`: ที่อยู่และเบอร์โทรศัพท์

---
**จัดทำโดย:** Watcharapong Khunnuy
**อีเมล:** watcharapong.kh@rmutsvmail.com
