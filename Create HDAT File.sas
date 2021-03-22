
/****************************    UW DATA FOR DEMO           */
proc casutil;
	droptable incaslib="PUBLIC" casdata="PREM_AND_LOSS" quiet;
run;

/* Promoting the tabel in CAS */
DATA PUBLIC.PREM_AND_LOSS (PROMOTE=YES);
SET CASUSER.PRMLS_NO_FORDRVR_ATVS;
RUN;

/* Save table in CAS */
proc casutil;
	save incaslib="PUBLIC" outcaslib="PUBLIC" casdata="PREM_AND_LOSS" replace;
run;