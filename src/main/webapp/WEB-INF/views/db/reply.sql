#	SELECT * FROM REPLY;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE REPLY;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE REPLY(
	R_NO INT AUTO_INCREMENT PRIMARY KEY,
	R_WRITER VARCHAR(100) NOT NULL,
	R_REWRITER VARCHAR(100),
	R_CONTENT VARCHAR(4000),
	R_DATE TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	R_EDITDATE TIMESTAMP,
	R_N_NO INT,
	R_M_NO INT,
	R_DELETE INT,
	R_GROUP INT,
	R_GROUPORD INT,
	R_DEPTH INT,
	FOREIGN KEY (R_N_NO) REFERENCES NOTICE (N_NO) ON DELETE CASCADE,
	FOREIGN KEY (R_M_NO) REFERENCES MEMBERS (M_NO) ON DELETE CASCADE
);

/* INSERT */