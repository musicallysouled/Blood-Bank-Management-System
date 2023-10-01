CREATE TABLE bb_blood_specimen(
	spec_id varchar(10) NOT NULL,
	b_group varchar(3) NOT NULL,
	spec_status char(1) NOT NULL Default 'NA',

	Constraint PK001_M0236_0022 PRIMARY KEY (spec_id),
	Constraint CK001_M0236_0023 CHECK (spec_status IN ('NA','T','F'))
	);