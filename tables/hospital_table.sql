CREATE TABLE bb_hospital_info(
	hosp_id varchar(10) NOT NULL,
	hosp_name varchar(50) NOT NULL,
	hosp_order varchar(100) NOT NULL,
	hosp_order_quant int NOT NULL,
	city_id char(3) NOT NULL,

	Constraint PK001_M0236_0021 PRIMARY KEY (hosp_id)
	);