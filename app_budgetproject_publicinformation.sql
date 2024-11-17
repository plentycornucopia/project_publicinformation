CREATE TABLE IF NOT EXISTS publicinformation (				
ID        SERIAL        ,				
publicinformation_ID	VARCHAR(30)	NOT NULL	UNIQUE	,
publicinformation_attributes	JSON	NULL		,
publicinformation_reference	VARCHAR(30)	NOT NULL		,
publicinformation_reportdate	TIMESTAMP	NOT NULL		,
publicinformation_type	VARCHAR(255)	NOT NULL		,
publicinformation_cra1	bytea	NULL		,
publicinformation_cra2	bytea	NULL		,
publicinformation_cra3	bytea	NULL		,
publicinformation_access	VARCHAR(30)	NOT NULL	DEFAULT 'public'	,
publicinformation_status	VARCHAR(30)	NOT NULL	DEFAULT 'active'	,
user_ID	VARCHAR(30)	NOT NULL		,
app_ID	VARCHAR(30)	NOT NULL		,
event_ID	VARCHAR(30)	NOT NULL		,
process_ID	VARCHAR(30)	NOT NULL		,
time_started	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
time_updated	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
time_finished	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
active	INT	NOT NULL	DEFAULT 1	,
);				
				
SELECT * FROM	publicinformation;			
DROP TABLE	publicinformation;			
				
CREATE SEQUENCE	publicinformation_sequence;			
ALTER SEQUENCE	publicinformation_sequence RESTART WITH 8301;			
ALTER TABLE	publicinformation ALTER COLUMN ID SET DEFAULT nextval('publicinformation_sequence');			
				
ALTER TABLE	ALTER TABLE publicinformation ADD FOREIGN KEY (user_ID) REFERENCES user (user_ID);			
ALTER TABLE	ALTER TABLE publicinformation ADD FOREIGN KEY (app_ID) REFERENCES app (app_ID);			

INSERT INTO publicinformation (
publicinformation_ID,
publicinformation_attributes,
publicinformation_reference,
publicinformation_reportdate,
publicinformation_type,
publicinformation_cra1,
publicinformation_cra2,
publicinformation_cra3,
publicinformation_access,
publicinformation_status,
user_ID,
app_ID,
event_ID,
process_ID,
active
)VALUES (
'score_54663',
'{}',
'30 Characters',
'05/24/2024',
'255 Characters',
'{}',
'{}',
'{}',
'access_54663',
'status_54663',
'user_54663',
'app_54663',
'event_54663',
'process_54663',
1
);

SELECT * FROM publicinformation;