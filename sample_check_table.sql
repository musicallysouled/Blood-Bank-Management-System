CREATE TABLE bb_sample_check(
	sample_id varchar(10) NOT NULL,
	doc_first_name varchar(20) NOT NULL,
	doc_last_name varchar(20) NOT NULL,
	doc_phnno int NOT NULL,
	sample_status char(1) NOT NULL default ' P',
	sample_result char(1) NOT NULL default 'NA',

	Constraint PK001_M0236_0022 PRIMARY KEY (sample_id),
	Constraint CK001_M0236_0022 CHECK (sample_status IN ('C','P')),
	Constraint CK001_M0236_0022 CHECK (sample_result IN ('NA','T','F'))
	);