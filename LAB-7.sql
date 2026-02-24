Create database HospitalDB;

use HospitalDB;

Create table Doctors(
doctor_id int Primary key auto_increment,
name varchar(50) not null,
specialization varchar(50),
experience_years int);

Create table Patients(
patient_id int Primary Key auto_increment,
name varchar(50) not null,
age int,
gender varchar(50));

Create table Appointments(
appointments_id int primary key auto_increment,
patient_id int,
doctor_id int,
appointments_date date,
status varchar(50),
foreign key (patient_id) references Patients(patient_id),
foreign key (doctor_id) references Doctors(doctor_id)
);

Create table Treatments(
treatment_id int primary key auto_increment,
appointments_id int,
treatment_details varchar(50),
cost decimal(10,2),
foreign key (appointments_id) references Appointments(appointments_id));

insert into Doctors(doctor_id, name, specialization, experience_years) values ("Dr.sharma","Cardiologist",12),
("Dr.Metha","Neurologist",8),("Dr.Ramesh","Orthopedic",15);
INSERT INTO Patients (name, age, gender) VALUES('Venish', 23, 'Male'),
('Sneha Reddy', 30, 'Female'),('Arjun', 60, 'Male'),('Priya',25,'Female');
INSERT INTO Appointments (patient_id, doctor_id, appointments_date, status) VALUES(1, 1, '2026-02-01', 'Completed'),
(2, 2, '2026-02-03', 'Scheduled'),(3, 3, '2026-02-05', 'Completed');
INSERT INTO Treatments (appointments_id, treatment_details, cost) VALUES
(1, 'ECG and Heart Medication', 5000.00),
(3, 'Knee X-Ray and Pain Relief Therapy', 3500.00);




Select * from Doctors;
Select * from Patients;
Select * from Appointments;
Select * from Treatments;