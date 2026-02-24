# Hospital-Database-Management-System
This project implements a Hospital Database Management System designed to manage doctors, patients, appointments, and treatments efficiently.

It demonstrates relational database design and healthcare workflow management.

📌 Overview

The system manages:

Doctor details and specializations

Patient records

Appointment scheduling and status tracking

Treatment details and associated costs

This project helps understand how healthcare data is structured and managed.

🗂 Database Structure
👨‍⚕️ Doctors

Stores doctor information.

Fields

doctor_id — unique doctor ID

name — doctor name

specialization — medical specialty

experience_years — years of experience

🧑 Patients

Stores patient details.

Fields

patient_id — unique patient ID

name — patient name

age — patient age

gender — gender

📅 Appointments

Tracks patient appointments.

Fields

appointments_id — unique appointment ID

patient_id — linked patient

doctor_id — linked doctor

appointments_date — appointment date

status — appointment status

💊 Treatments

Stores treatment details and costs.

Fields

treatment_id — unique treatment ID

appointments_id — linked appointment

treatment_details — treatment description

cost — treatment cost

🔗 Relationships

One patient can have multiple appointments.

One doctor can attend multiple appointments.

Each appointment is linked to one patient and one doctor.

Treatments are linked to appointments.
