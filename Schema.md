# Blood Bank Management System: Schema
--------------------------------------------------------------------
![image](https://github.com/musicallysouled/Blood-Bank-Management-System/assets/88243330/3c67f6a8-12a5-4a8a-a7c1-93e9367ae5f9)
(using quick dbd)

Blood_Specimen
-----
Spec_no PK int IDENTITY
b_group char
status char
doc_id varchar FK >- BB_Manager.M_id

Sample_Check
----
doc_id PK int FK >- Blood_Specimen.doc_id
doc_name varchar
doc_phn_no int
sample_status char
sample_result char

BB_Manager
----
M_id PK int
m_fname varchar
m_lname varchar
m_phoneno int
m_sex char

Recording_Staff
----
staff_id int
staff_name varchar
staff_phnno int
staff_sex char

Recipients
-----
reci_id pk int
reci_name varchar
reci_age int
reci_bgrp char
reci_bquantity int FK >- Hospital_info2.hosp_required_q
reci_sex char
reci_reg_date date
reci_phnno int
city_id int FK >- city.city_id
m_id FK >- BB_Manager.M_id
staff_id FK >- Recording_Staff.staff_id

city
----
city_id int PK
city_name varchar

Blood_donor
-----
bd_id int pk
bd_name varchar
bd__age int
bd_sex  char
bd_bgroup char
bd_reg_date date
bd_phnno int
staff_id int FK >- Recording_Staff.staff_id
city_id int FK >- city.city_id

Hospital_Info1
----
hosp_id int pk
hosp_name varchar
city_id int FK >- city.city_id
m_id int FK >- BB_Manager.M_id
hosp_phnno int

Hospital_info2
----
hosp_id int pk
hosp_name varchar
hosp_required_q int
req_bg char pk
