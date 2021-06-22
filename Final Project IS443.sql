-- Insert US_STATEments

CREATE DATABASE FINAL_PROJ6

CREATE TABLE PARTY
(
party_Name varchar(30) NOT NULL UNIQUE,
yearFounded smallint,
primary key(party_Name),
);

CREATE TABLE US_STATE
(
stateName varchar(20) NOT NULL UNIQUE,
stateAbbreviation char(2) NOT NULL UNIQUE,
stateCreationYear smallint,
stateRegion varchar(20),
primary key(stateAbbreviation),
);


CREATE TABLE SENATE_COMMITTEE
(
committeeID char(3) NOT NULL UNIQUE,
committeeName varchar(80) UNIQUE,
committeeChair varchar(25),
numOfMembers smallint,
committeeType varchar(20),
primary key(committeeID),
);

CREATE TABLE BILL
(
bill_ID char(6) NOT NULL UNIQUE,
billName varchar(120),
dateIntroduced date,
passed char(1),
datePassed date,
author varchar(20),
sponsor varchar(20),
presidentSignedBy varchar(20),
primary key (bill_ID),
);

CREATE TABLE SENATOR
(
senator_ID smallint NOT NULL UNIQUE,
senator_FName varchar(20),
senator_LName varchar(30),
senator_MI	char(1),
senatorNickName varchar(20),
senatorSex char(1),
senator_DOB date,
senator_PartyAffiliation varchar(30),
senator_YearElected smallint,
senator_YearLeftOffice smallint,
senator_ReasonLeftOffice varchar(30),
senator_Leadership char(1),
senator_LeadershipPosition varchar(50),
senator_YearsInSenate smallint,
senator_SenateClass smallint,
senator_State char(2),
bill_ID char(6),
committeeChairmanshipID char(3),
primary key(senator_ID),
foreign key(senator_PartyAffiliation) REFERENCES PARTY(party_Name),
foreign key(senator_State) REFERENCES US_STATE(stateAbbreviation),
foreign key(committeeID) REFERENCES SENATE_COMMITTEE(committeeID),
foreign key(bill_ID) REFERENCES BILL(bill_ID)
);


-- Insert Values Into Tables --
INSERT INTO PARTY VALUES('Republican', 	1854);
INSERT INTO PARTY VALUES('Democrat',	1828);
INSERT INTO PARTY VALUES('Libertarian',	1971);
INSERT INTO PARTY VALUES('Federalist',	1789);
INSERT INTO PARTY VALUES('Whig',		1834);


INSERT INTO SENATE_COMMITTEE VALUES('C01', 'Senate Judiciary Committee',							'Charles Grassley',	21, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C02', 'Senate Finance Committee',								'Orrin Hatch', 		26, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C03', 'Senate Intelligence Committee',							'Richard Burr', 		15, 'Select Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C04', 'Senate Agriculture, Nutrition, and Forestry Committee',			'Pat Roberts', 		23, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C05', 'Senate Appropriations Committee',							'Richard Shelby', 	32, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C06', 'Senate Armed Services Committee',							'Jim Inhofe', 		28, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C07', 'Senate Banking, Housing and Urban Affairs Committee',			'Mike Crapo', 		23, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C08', 'Senate Budget Committee',								'Mike Enzi', 		23, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C09', 'Senate Commerce, Science, and Transportation Committee',			'John Thune', 		27, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C10', 'Senate Energy and Natural Resources Committee',				'Lisa Murkowski', 	22, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C11', 'Senate Environment and Public Works Committee',				'John Barrasso',  	21, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C12', 'Senate Foreign Relations Committee',						'Bob Corker', 		21, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C13', 'Senate Health, Education, Labor, and Pensions Committee',			'Lamar Alexander',  	23, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C14', 'Senate Homeland Security and Governmental Affairs Committee',		'Ron Johnson',  		14, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C15', 'Senate Indian Affairs Committee',							'John Hoeven', 		15, 'Permanent Select Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C16', 'Senate Rules and Administration Committee',					'Roy Blunt', 		18, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C17', 'Senate Ethics Committee',								'Johnny Isakson', 	6,  'Select Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C18', 'Senate Small Business and Entrepreneurship Committee',			'Jim Risch', 		19, 'Standing Committee');
INSERT INTO SENATE_COMMITTEE VALUES('C19', 'Senate Committee on Aging',								'Susan Collins',  	17, 'Special Committee');

INSERT INTO US_STATE VALUES('Alabama', 		'AL', 1819, 'South');
INSERT INTO US_STATE VALUES('Alaska', 		'AK', 1959, 'Pacific');
INSERT INTO US_STATE VALUES('Arizona', 		'AZ', 1912, 'Southwest');
INSERT INTO US_STATE VALUES('Arkansas', 		'AR', 1836, 'South');
INSERT INTO US_STATE VALUES('California', 	'CA', 1850, 'West');
INSERT INTO US_STATE VALUES('Colorado', 		'CO', 1876, 'West');
INSERT INTO US_STATE VALUES('Connecticut', 	'CT', 1788, 'Northeast');
INSERT INTO US_STATE VALUES('Delaware', 		'DE', 1787, 'Northeast');
INSERT INTO US_STATE VALUES('Florida', 		'FL', 1845, 'South');
INSERT INTO US_STATE VALUES('Georgia', 		'GA', 1788, 'South');
INSERT INTO US_STATE VALUES('Hawaii', 		'HI', 1959, 'Pacific');
INSERT INTO US_STATE VALUES('Idaho', 		'ID', 1890, 'West');
INSERT INTO US_STATE VALUES('Illinois', 		'IL', 1818, 'Midwest');
INSERT INTO US_STATE VALUES('Indiana', 		'IN', 1816, 'Midwest');
INSERT INTO US_STATE VALUES('Iowa', 		'IA', 1846, 'Midwest');
INSERT INTO US_STATE VALUES('Kansas', 		'KS', 1861, 'Midwest');
INSERT INTO US_STATE VALUES('Kentucky', 		'KY', 1792, 'South');
INSERT INTO US_STATE VALUES('Louisiana', 		'LA', 1812, 'South');
INSERT INTO US_STATE VALUES('Maine', 		'ME', 1820, 'Northeast');
INSERT INTO US_STATE VALUES('Maryland', 		'MD', 1788, 'Northeast');
INSERT INTO US_STATE VALUES('Massachusetts', 	'MS', 1788, 'Northeast');
INSERT INTO US_STATE VALUES('Michigan', 		'MI', 1837, 'Midwest');
INSERT INTO US_STATE VALUES('Minnesota', 		'MN', 1858, 'Midwest');
INSERT INTO US_STATE VALUES('Mississippi', 	'MS', 1817, 'South');
INSERT INTO US_STATE VALUES('Missouri', 		'MO', 1821, 'Midwest');
INSERT INTO US_STATE VALUES('Montana', 		'MT', 1889, 'West');
INSERT INTO US_STATE VALUES('Nebraska', 		'NE', 1867, 'Midwest');
INSERT INTO US_STATE VALUES('Nevada', 		'NV', 1864, 'West');
INSERT INTO US_STATE VALUES('New Hampshire', 	'NH', 1788, 'Northeast');
INSERT INTO US_STATE VALUES('New Jersey', 	'NJ', 1787, 'Northeast');
INSERT INTO US_STATE VALUES('New Mexico', 	'NM', 1912, 'Southwest');
INSERT INTO US_STATE VALUES('New York', 		'NY', 1788, 'Northeast');
INSERT INTO US_STATE VALUES('North Carolina', 	'NC', 1789, 'South');
INSERT INTO US_STATE VALUES('North Dakota', 	'ND', 1889, 'Midwest');
INSERT INTO US_STATE VALUES('Ohio', 		'OH', 1803, 'Midwest');
INSERT INTO US_STATE VALUES('Oklahoma', 		'OK', 1907, 'South');
INSERT INTO US_STATE VALUES('Oregon', 		'OR', 1859, 'West');
INSERT INTO US_STATE VALUES('Pennsylvania', 	'PA', 1787, 'Northeast');
INSERT INTO US_STATE VALUES('Rhode Island', 	'RI', 1790, 'Northeast');
INSERT INTO US_STATE VALUES('South Carolina', 	'SC', 1788, 'South');
INSERT INTO US_STATE VALUES('South Dakota', 	'SD', 1889, 'Midwest');
INSERT INTO US_STATE VALUES('Tennessee', 		'TN', 1796, 'South');
INSERT INTO US_STATE VALUES('Texas', 		'TX', 1845, 'South');
INSERT INTO US_STATE VALUES('Utah', 		'UT', 1896, 'West');
INSERT INTO US_STATE VALUES('Vermont', 		'VT', 1791, 'Northeast');
INSERT INTO US_STATE VALUES('Virginia', 		'VA', 1788, 'South');
INSERT INTO US_STATE VALUES('Washington', 	'WA', 1889, 'West');
INSERT INTO US_STATE VALUES('West Virginia', 	'WV', 1863, 'South');
INSERT INTO US_STATE VALUES('Wisconsin', 		'WI', 1848, 'Midwest');
INSERT INTO US_STATE VALUES('Wyoming', 		'WY', 1890, 'West');



INSERT INTO BILL VALUES('S.3021', 'Americas Water Infrastructure Act of 2018', 				'07-Jun-2018',	'Y', '23-Oct-2018', 'Amy Klobuchar', 	'Tina Smith', 	'Donald Trump');
INSERT INTO BILL VALUES('S.2372', 'Veterans Cemetery Benefit Correction Act', 				'05-Feb-2018', 	'Y', '06-Jun-2018', 'Johnny Isakson',	'Marco Rubio', 	'Donald Trump');
INSERT INTO BILL VALUES('S.2155', 'Economic Growth, Regulatory Relief, and Consumer Protection Act', 	'16-Nov-2017', 	'Y', '24-May-2018', 'Mike Crapo', '		Tim Scott', 	'Donald Trump');


senator_ID smallint NOT NULL UNIQUE,
senator_FName varchar(20),
senator_LName varchar(30),
senator_MI	char(1),
senatorNickName varchar(20),
senatorSex char(1),
senator_DOB date,
senator_PartyAffiliation varchar(30),
senator_YearElected smallint,
senator_YearLeftOffice smallint,
senator_ReasonLeftOffice varchar(30),
senator_Leadership char(1),
senator_LeadershipPosition varchar(40),
senator_YearsInSenate smallint,
senator_SenateClass smallint,
senator_State char(2),
bill_ID char(6),
committeeID char(3),

INSERT INTO SENATOR VALUES(001, 'Gordon', 	'Jones', 		'D', 		'Doug', 		'M', 	'04-May-1954', 	'Democrat', 	2018, 	NULL, 	'In Office', 			'N',	NULL,  							0,	2, 	'AL', NULL, 	NULL);
INSERT INTO SENATOR VALUES(002, 'Richard', 	'Shelby', 		'C', 		'Richard', 		'M', 	'06-May-1934', 	'Republican', 	1987, 	NULL, 	'In Office', 			'N', 	NULL, 							31, 	3, 	'AL', NULL, 	'C05');
INSERT INTO SENATOR VALUES(003, 'Daniel', 	'Sullivan', 	'S', 		'Dan', 		'M', 	'13-Nov-1964', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4,	2,	'AK', NULL, 	NULL);
INSERT INTO SENATOR VALUES(004, 'Lisa', 		'Murkowski', 	'A', 		'Lisa', 		'F', 	'22-May-1957', 	'Republican', 	2002, 	NULL, 	'In Office', 			'N', 	NULL, 							16,	3,	'AK', NULL,		'C10');
INSERT INTO SENATOR VALUES(005, 'Jeffrey', 	'Flake', 		'L', 		'Jeff', 		'M', 	'31-Dec-1962', 	'Republican', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6,	1,	'AZ', NULL, 	NULL);
INSERT INTO SENATOR VALUES(006, 'Jon', 		'Kyl', 		'L', 		'Jon', 		'M', 	'25-Apr-1942', 	'Republican', 	2018, 	NULL, 	'In Office', 			'N', 	NULL, 							0,	3,	'AZ', NULL, 	NULL);
INSERT INTO SENATOR VALUES(007, 'Thomas', 	'Cotton', 		'B', 		'Tom', 		'M', 	'13-May-1977', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4, 	2, 	'AR', NULL, 	NULL);
INSERT INTO SENATOR VALUES(008, 'John', 		'Boozman', 		'N', 		'John', 		'M', 	'10-Dec-1950', 	'Republican', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8,	3,	'AR', NULL, 	NULL);
INSERT INTO SENATOR VALUES(009, 'Dianne', 	'Feinstein', 	'E', 		'Dianne', 		'F', 	'22-Jun-1933', 	'Democrat', 	1992, 	NULL, 	'In Office', 			'N', 	NULL, 							26,	1,	'CA', NULL, 	NULL);
INSERT INTO SENATOR VALUES(010, 'Kamala', 	'Harris', 		'D', 		'Kamala', 		'F', 	'20-Oct-1964', 	'Democrat', 	2016, 	NULL, 	'In Office', 			'N', 	NULL, 							2,	3,	'CA', NULL, 	NULL);
INSERT INTO SENATOR VALUES(011, 'Cory', 		'Gardner', 		'S', 		'Cory', 		'M', 	'22-Aug-1974', 	'Republican', 	2014, 	NULL, 	'In Office', 			'Y', 	'Republican Campaign Committee Chairman', 	4,	2,	'CO', NULL, 	NULL);
INSERT INTO SENATOR VALUES(012, 'Michael', 	'Bennet', 		'F', 		'Michael', 		'M', 	'28-Nov-1964', 	'Democrat', 	2009, 	NULL, 	'In Office', 			'N', 	NULL, 							9,	3,	'CO', NULL, 	NULL);
INSERT INTO SENATOR VALUES(013, 'Christopher', 	'Murphy', 		'S', 		'Chris', 		'M', 	'03-Aug-1973', 	'Democrat', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6,	1,	'CT', NULL, 	NULL);
INSERT INTO SENATOR VALUES(014, 'Richard', 	'Blumenthal', 	NULL, 	'Richard', 		'M', 	'13-Feb-1946', 	'Democrat', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8,	3,	'CT', NULL, 	NULL);
INSERT INTO SENATOR VALUES(015, 'Thomas', 	'Carper', 		'R', 		'Tom', 		'M', 	'23-Jan-1974', 	'Democrat', 	2000, 	NULL, 	'In Office', 			'N', 	NULL, 							18, 	1,	'DE', NULL, 	NULL);
INSERT INTO SENATOR VALUES(016, 'Christopher', 	'Coons', 		'A', 		'Chris', 		'M', 	'09-Sep-1963', 	'Democrat', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8,	2,	'DE', NULL, 	NULL);
INSERT INTO SENATOR VALUES(017, 'Clarence', 	'Nelson', 		'W', 		'Bill', 		'M', 	'29-Sep-1942', 	'Democrat', 	2000, 	NULL, 	'In Office', 			'N', 	NULL, 							18,	1,	'FL',  NULL, 	NULL);
INSERT INTO SENATOR VALUES(018, 'Marco', 		'Rubio', 		'A', 		'Marco', 		'M', 	'28-May-1971', 	'Republican', 	2010, 	NULL, 	'In Office', 			'N',  NULL, 							8, 	3,	'FL', 'S.2372', 	NULL); 
INSERT INTO SENATOR VALUES(019, 'David', 		'Perdue', 		'A', 		'David', 		'M', 	'10-Dec-1949', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N',  NULL, 							4,	2,	'GA', NULL, 	NULL);
INSERT INTO SENATOR VALUES(020, 'John', 		'Isakson', 		'H', 		'Johnny', 		'M', 	'28-Dec-1944', 	'Republican', 	2004, 	NULL, 	'In Office', 			'N', 	NULL, 							14, 	3, 	'GA', 'S.2372', 	'C17');
INSERT INTO SENATOR VALUES(021, 'Mazie', 		'Hirono', 		'K', 		'Mazie', 		'F', 	'03-Nov-1947', 	'Democrat', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6,	1,	'HI', NULL, 	NULL);
INSERT INTO SENATOR VALUES(022, 'Brian', 		'Schatz', 		'E', 		'Brian', 		'M', 	'20-Oct-1972', 	'Democrat', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6,	3,	'HI', NULL, 	NULL);
INSERT INTO SENATOR VALUES(023, 'James', 		'Risch', 		'E', 		'Jim', 		'M', 	'03-May-1943', 	'Republican', 	2008, 	NULL, 	'In Office', 			'N', 	NULL, 							10,	2,	'ID', NULL,		'C18');
INSERT INTO SENATOR VALUES(024, 'Michael', 	'Crapo', 		'D', 		'Mike', 		'M', 	'20-May-1951', 	'Republican', 	1998, 	NULL, 	'In Office', 			'N', 	NULL, 							20, 	3, 	'ID', 'S.2155', 	'C07');
INSERT INTO SENATOR VALUES(025, 'Richard', 	'Durbin', 		'J', 		'Dick', 		'M', 	'21-Nov-1944', 	'Democrat', 	1996, 	NULL, 	'In Office', 			'Y', 	'Senate Minority Whip', 				22,	2,	'IL', NULL, 	NULL);
INSERT INTO SENATOR VALUES(026, 'Ladda', 		'Duckworth', 	'T', 		'Tammy', 		'F', 	'12-Mar-1968', 	'Democrat', 	2016, 	NULL, 	'In Office', 			'N', 	NULL, 							2,	3,	'IL', NULL, 	NULL);
INSERT INTO SENATOR VALUES(027, 'Joseph',		'Donnelly', 	'S', 		'Joe', 		'M', 	'29-Sep-1955', 	'Democrat', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6,	1,	'IN', NULL, 	NULL);
INSERT INTO SENATOR VALUES(028, 'Todd', 		'Young', 		'C', 		'Todd', 		'M', 	'24-Aug-1972', 	'Republican', 	2016, 	NULL, 	'In Office', 			'N', 	NULL, 							2,	3,	'IN', NULL, 	NULL);
INSERT INTO SENATOR VALUES(029, 'Joni', 		'Ernst', 		'K', 		'Joni', 		'F', 	'01-July-1970',	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL,								4,	2,	'IA', NULL, 	NULL);
INSERT INTO SENATOR VALUES(030, 'Charles', 	'Grassley', 	'E', 		'Chuck', 		'M', 	'17-Sep-1933', 	'Republican', 	1980, 	NULL, 	'In Office', 			'N', 	NULL, 							38, 	3, 	'IA', NULL, 	'C01');
INSERT INTO SENATOR VALUES(031, 'Charles', 	'Roberts', 		'P', 		'Pat', 		'M', 	'20-Apr-1936', 	'Republican', 	1996, 	NULL, 	'In Office', 			'N', 	NULL, 							22,	2,	'KS', NULL,		'C04');
INSERT INTO SENATOR VALUES(032, 'Gerald', 	'Moran', 		'W', 		'Jerry', 		'M', 	'29-May-1954', 	'Republican', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8,	3,	'KS', NULL, 	NULL);
INSERT INTO SENATOR VALUES(033, 'Addison', 	'McConnell', 	'M', 		'Mitch', 		'M', 	'20-Feb-1942', 	'Republican', 	1984, 	NULL, 	'In Office', 			'Y', 	'Senate Majority Leader', 				34,	2,	'KY', NULL, 	NULL);
INSERT INTO SENATOR VALUES(034, 'Randal', 	'Paul', 		'H', 		'Rand', 		'M', 	'07-Jan-1963', 	'Republican', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8, 	3, 	'KY', NULL, 	NULL);
INSERT INTO SENATOR VALUES(035, 'William', 	'Cassidy', 		'M', 		'Bill', 		'M', 	'28-Sep-1957', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4,	2,	'LA', NULL, 	NULL);
INSERT INTO SENATOR VALUES(036, 'John', 		'Kennedy', 		'N', 		'John', 		'M', 	'21-Nov-1951', 	'Republican', 	2016, 	NULL, 	'In Office', 			'N', 	NULL, 							2,	3,	'LA', NULL, 	NULL);
INSERT INTO SENATOR VALUES(037, 'Angus', 		'King', 		'S', 		'Angus', 		'M', 	'31-Mar-1944', 	'Independent', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6, 	1,	'ME', NULL, 	NULL);
INSERT INTO SENATOR VALUES(038, 'Susan', 		'Collins', 		'M', 		'Susan', 		'F', 	'07-Dec-1952', 	'Republican', 	1996, 	NULL, 	'In Office', 			'N', 	NULL, 							22,	2,	'ME', NULL, 	'C19');
INSERT INTO SENATOR VALUES(039, 'Benjamin', 	'Cardin', 		'L', 		'Ben', 		'M', 	'05-Oct-1943', 	'Democrat', 	2006, 	NULL, 	'In Office', 			'N', 	NULL, 							12,	1,	'MD', NULL, 	NULL);
INSERT INTO SENATOR VALUES(040, 'Christopher', 	'Van Hollen', 	'J', 		'Chris', 		'M', 	'10-Jan-1959', 	'Democrat', 	2016, 	NULL, 	'In Office', 			'Y', 	'Democratic Campaign Committee Chairman', 	2,	3,	'MD', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(041, 'Elizabeth', 	'Warren', 		'A', 		'Elizabeth', 	'F', 	'22-Jun-1949', 	'Democrat', 	2012, 	NULL, 	'In Office', 			'Y', 	'Democratic Caucus Vice Chair', 			6, 	1,	'MA', NULL, 	NULL);
INSERT INTO SENATOR VALUES(042, 'Edward', 	'Markey', 		'J', 		'Ed', 		'M', 	'11-Jul-1946', 	'Democrat', 	2013, 	NULL, 	'In Office', 			'N', 	NULL, 							5,	2,	'MA', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(043, 'Deborah', 	'Stabenow', 	'A', 		'Debbie', 		'F', 	'29-Apr-1950', 	'Democrat', 	2000, 	NULL, 	'In Office', 			'Y', 	'Democrat Policy Committee Chairwoman', 		18,	1,	'MI', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(044, 'Gary', 		'Peters', 		'C', 		'Gary', 		'M',	'01-Dec-1958', 	'Democrat', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4,	2,	'MI', NULL, 	NULL);
INSERT INTO SENATOR VALUES(045, 'Amy', 		'Klobuchar', 	'J', 		'Amy', 		'F', 	'15-May-1960', 	'Democrat', 	2006, 	NULL, 	'In Office', 			'Y', 	'Democrat Steering Committee Chairwoman', 	12, 	1, 	'MN', 'S.3021', 	NULL);
INSERT INTO SENATOR VALUES(046, 'Christine', 	'Smith', 		'E', 		'Tina', 		'F', 	'04-Mar-1958', 	'Democrat', 	2018, 	NULL, 	'In Office', 			'N', 	NULL, 							0, 	2, 	'MN', 'S.3021', 	NULL);
INSERT INTO SENATOR VALUES(047, 'Roger', 		'Wicker', 		'F', 		'Roger', 		'M', 	'31-Dec-2007', 	'Republican', 	2007, 	NULL, 	'In Office', 			'N', 	NULL, 							11,	1,	'MS', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(048, 'Cindy', 		'Hyde-Smith', 	NULL, 	'Cindy', 		'F', 	'10-May-1959', 	'Republican', 	2018, 	NULL, 	'In Office', 			'N', 	NULL, 							0,	2,	'MS', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(049, 'Claire', 	'McCaskill', 	'C', 		'Claire', 		'F', 	'24-Jul-1953', 	'Democrat', 	2006, 	NULL, 	'In Office', 			'N', 	NULL, 							12,	1,	'MO', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(050, 'Roy', 		'Blunt', 		'D', 		'Roy', 		'M', 	'10-Jan-1950', 	'Republican', 	2010, 	NULL, 	'In Office', 			'Y', 	'Republican Conference Vice Chairman', 		8,	3,	'MO', NULL,		'C16'); 
INSERT INTO SENATOR VALUES(051, 'Raymond', 	'Tester', 		'J', 		'Jon', 		'M', 	'21-Aug-1956', 	'Democrat', 	2006, 	NULL, 	'In Office', 			'N', 	NULL, 							12,	1,	'MT', NULL, 	NULL);  
INSERT INTO SENATOR VALUES(052, 'Steven', 	'Daines', 		'D', 		'Steve', 		'M', 	'20-Aug-1962', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4,	2,	'MT', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(053, 'Debra', 		'Fischer', 		'S', 		'Deb', 		'F', 	'01-Mar-1951', 	'Republican', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6,	1,	'NE', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(054, 'Benjamin', 	'Sasse', 		'E', 		'Ben', 		'M', 	'22-Feb-1972', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4,	2,	'NE', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(055, 'Dean', 		'Heller', 		'A', 		'Dean', 		'M', 	'10-May-1960', 	'Republican', 	2011, 	NULL, 	'In Office', 			'N', 	NULL, 							7,	1,	'NV', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(056, 'Catherine',	'Cortez Masto', 	'M', 		'Catherine', 	'F', 	'29-Mar-1964', 	'Democrat', 	2016, 	NULL, 	'In Office', 			'N', 	NULL, 							2,	3,	'NV', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(057, 'Cynthia', 	'Shaheen', 		'J', 		'Jeanne', 		'F', 	'28-Jan-1947', 	'Democrat', 	2008, 	NULL, 	'In Office', 			'N', 	NULL, 							10,	2,	'NH', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(058, 'Margaret', 	'Hassan', 		'C', 		'Maggie', 		'F', 	'27-Feb-1958', 	'Democrat', 	2016, 	NULL, 	'In Office', 			'N', 	NULL, 							2,	3,	'NH', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(059, 'Robert', 	'Menendez', 	NULL, 	'Bob', 		'M', 	'01-Jan-1954', 	'Democrat',		2006, 	NULL, 	'In Office', 			'N', 	NULL, 							12,	1,	'NJ', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(060, 'Cory', 		'Booker', 		'A', 		'Cory', 		'M', 	'27-Apr-1969', 	'Democrat', 	2013, 	NULL, 	'In Office', 			'N', 	NULL, 							5,	2,	'NJ', NULL, 	NULL);
INSERT INTO SENATOR VALUES(061, 'Martin', 	'Heinrich', 	'T', 		'Martin', 		'M',  '17-Oct-1971', 	'Democrat', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6,	1,	'NM', NULL, 	NULL);
INSERT INTO SENATOR VALUES(062, 'Thomas', 	'Udall', 		'S', 		'Tom', 		'M', 	'18-May-1948', 	'Democrat', 	2008, 	NULL, 	'In Office', 			'N', 	NULL, 							10,	2,	'NM', NULL, 	NULL);
INSERT INTO SENATOR VALUES(063, 'Kirsten', 	'Gillibrand', 	'E', 		'Kirsten', 		'F', 	'09-Dec-1966', 	'Democrat', 	2009, 	NULL, 	'In Office', 			'N', 	NULL, 							9,	1,	'NY', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(064, 'Charles', 	'Schumer', 		'E', 		'Chuck', 		'M', 	'23-Nov-1950', 	'Democrat', 	1998, 	NULL, 	'In Office', 			'Y', 	'Senate Minority Leader', 				20, 	3, 	'NY', NULL, 	NULL);
INSERT INTO SENATOR VALUES(065, 'Thomas', 	'Tillis', 		'R', 		'Thom', 		'M', 	'30-Aug-1960', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4,	2,	'NC', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(066, 'Richard', 	'Burr', 		'M', 		'Richard', 		'M', 	'30-Nov-1955', 	'Republican', 	2004, 	NULL, 	'In Office', 			'N', 	NULL, 							14, 	3, 	'NC', NULL, 	'C03');
INSERT INTO SENATOR VALUES(067, 'Mary', 		'Heitkamp', 	'K', 		'Heidi', 		'F', 	'30-Oct-1955', 	'Democrat', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6,	1,	'ND', NULL, 	NULL);
INSERT INTO SENATOR VALUES(068, 'John', 		'Hoeven', 		'H', 		'John', 		'M', 	'13-Mar-1957', 	'Republican', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8,	3,	'ND', NULL, 	'C15');
INSERT INTO SENATOR VALUES(069, 'Sherrod', 	'Brown', 		'C', 		'Sherrod', 		'M', 	'09-Nov-1952', 	'Democrat', 	2006, 	NULL, 	'In Office', 			'N', 	NULL, 							12, 	1,	'OH', NULL, 	NULL);
INSERT INTO SENATOR VALUES(070, 'Robert', 	'Portman', 		'J', 		'Rob', 		'M', 	'19-Dec-1955', 	'Republican', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8,	3,	'OH', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(071, 'James', 		'Inhofe', 		'M', 		'Jim', 		'M', 	'17-Nov-1934', 	'Republican', 	1994, 	NULL, 	'In Office', 			'N', 	NULL, 							24,	2,	'OK', NULL,		'C06'); 
INSERT INTO SENATOR VALUES(072, 'James', 		'Lankford', 	'P', 		'James', 		'M', 	'04-Mar-1968', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4,	3,	'OK', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(073, 'Jeffrey', 	'Merkley', 		'A', 		'Jeff', 		'M', 	'24-Oct-1956', 	'Democrat', 	2008, 	NULL, 	'In Office', 			'Y', 	'Chief Deputy Whip', 					10,	2,	'OR', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(074, 'Ronald', 	'Wyden', 		'L', 		'Ron', 		'M', 	'03-May-1949', 	'Democrat', 	1996, 	NULL, 	'In Office', 			'N', 	NULL, 							22,	3,	'OR', NULL, 	NULL);	 
INSERT INTO SENATOR VALUES(075, 'Robert', 	'Casey', 		'P', 		'Bob', 		'M', 	'13-Apr-1960', 	'Democrat', 	2006, 	NULL, 	'In Office', 			'N', 	NULL, 							12,	1,	'PA', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(076, 'Patrick', 	'Toomey', 		'J', 		'Pat', 		'M', 	'17-Nov-1961', 	'Republican', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8,	3,	'PA', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(077, 'Sheldon', 	'Whitehouse', 	NULL, 	'Sheldon', 		'M', 	'20-Oct-1955', 	'Democrat', 	2006, 	NULL, 	'In Office', 			'N', 	NULL, 							12,	1,	'RI', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(078, 'John', 		'Reed', 		'F', 		'Jack', 		'M', 	'12-Nov-1949', 	'Democrat', 	1996, 	NULL, 	'In Office', 			'N', 	NULL, 							22,	2,	'RI', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(079, 'Lindsey', 	'Graham', 		'O', 		'Lindsey', 		'M', 	'09-Jul-1955', 	'Republican', 	2002, 	NULL, 	'In Office', 			'N', 	NULL, 							16,	2,	'SC', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(080, 'Timothy', 	'Scott', 		'E', 		'Tim', 		'M', 	'19-Sep-1965', 	'Republican', 	2013, 	NULL, 	'In Office', 			'N', 	NULL, 							5, 	3, 	'SC', 'S.2155', 	NULL);
INSERT INTO SENATOR VALUES(081, 'Michael', 	'Rounds', 		'M', 		'Mike', 		'M', 	'24-Oct-1954', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4,	2,	'SD', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(082, 'John', 		'Thune', 		'R', 		'John', 		'M', 	'07-Jan-1961', 	'Republican', 	2004, 	NULL, 	'In Office', 			'Y', 	'Republican Conference Chairman', 			14,	3,	'SD', NULL, 	'C09');
INSERT INTO SENATOR VALUES(083, 'Robert', 	'Corker', 		'P', 		'Bob', 		'M', 	'24-Aug-1952', 	'Republican', 	2006, 	NULL, 	'In Office', 			'N', 	NULL, 							12,	1,	'TN', NULL,		'C12');
INSERT INTO SENATOR VALUES(084, 'Andrew', 	'Alexander', 	'L', 		'Lamar', 		'M', 	'03-Jul-1940', 	'Republican', 	2002, 	NULL, 	'In Office', 			'N', 	NULL, 							16,	2,	'TN', NULL,		'C13');
INSERT INTO SENATOR VALUES(085, 'Rafael', 	'Cruz', 		'E', 		'Ted', 		'M', 	'22-Dec-1970', 	'Republican', 	2012, 	NULL, 	'In Office', 			'N', 	NULL,								6, 	1, 	'TX', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(086, 'John', 		'Cornyn', 		NULL, 	'John', 		'M', 	'02-Feb-1952', 	'Republican', 	2002, 	NULL, 	'In Office', 			'Y', 	'Senate Majority Whip', 				16, 	2, 	'TX', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(087, 'Orrin', 		'Hatch', 		'G', 		'Orrin', 		'M', 	'22-Mar-1934', 	'Republican', 	1977, 	2018, 	'Retired',				'Y', 	'President Pro Tempore', 				41, 	1, 	'UT', NULL, 	'C02'); 
INSERT INTO SENATOR VALUES(088, 'Michael', 	'Lee', 		'S', 		'Mike', 		'M',	'04-Jun-1971', 	'Republican', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8, 	3, 	'UT', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(089, 'Bernard', 	'Sanders', 		NULL, 	'Bernie', 		'M', 	'08-Sep-1941', 	'Independent', 	2006, 	NULL, 	'In Office', 			'Y', 	'Democrat Outreach Chairman', 			12,	1,	'VT', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(090, 'Patrick', 	'Leahy', 		'J', 		'Patrick', 		'M', 	'31-Mar-1940', 	'Democrat', 	1974, 	NULL, 	'In Office', 			'Y', 	'President Pro Tempore Emeritus', 			44,	3,	'VT', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(091, 'Timothy', 	'Kaine', 		'M', 		'Tim', 		'M', 	'26-Feb-1958', 	'Democrat', 	2012, 	NULL, 	'In Office', 			'N', 	NULL, 							6,	1,	'VA', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(092, 'Mark', 		'Warner', 		'R', 		'Mark', 		'M', 	'15-Dec-1954', 	'Democrat', 	2008, 	NULL, 	'In Office', 			'Y', 	'Democratic Caucus Vice Chairman', 			10,	2,	'VA', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(093, 'Maria', 		'Cantwell', 	'E', 		'Maria', 		'F', 	'13-Oct-1958', 	'Democrat', 	2000, 	NULL, 	'In Office', 			'N', 	NULL, 							18,	1,	'WA', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(094, 'Patricia', 	'Murray', 		'L', 		'Patty', 		'F', 	'11-Oct-1950', 	'Democrat', 	1992, 	NULL, 	'In Office', 			'Y', 	'Assistant Minority Leader', 				26,	3,	'WA', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(095, 'Joseph', 	'Manchin', 		NULL, 	'Joe', 		'M', 	'24-Aug-1947', 	'Democrat', 	2010, 	NULL, 	'In Office', 			'Y', 	'Democrat Policy Committee Vice Chairman', 	8,	1,	'WV', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(096, 'Shelley', 	'Moore Capito', 	'W', 		'Shelley', 		'F', 	'26-Nov-1953', 	'Republican', 	2014, 	NULL, 	'In Office', 			'N', 	NULL, 							4,	2,	'WV', NULL, 	NULL); 
INSERT INTO SENATOR VALUES(097, 'Tammy', 		'Baldwin', 		'S', 		'Tammy', 		'F', 	'11-Feb-1962', 	'Democrat', 	2012, 	NULL, 	'In Office', 			'Y', 	'Democratic Caucus Secretary', 			6, 	1,	'WI', NULL, 	NULL);
INSERT INTO SENATOR VALUES(098, 'Ronald', 	'Johnson', 		'H', 		'Ron', 		'M', 	'08-Apr-1955', 	'Republican', 	2010, 	NULL, 	'In Office', 			'N', 	NULL, 							8,	3,	'WI', NULL, 	'C14');
INSERT INTO SENATOR VALUES(099, 'John', 		'Barrasso', 	'A', 		'John', 		'M', 	'21-Jul-1952', 	'Republican', 	2007, 	NULL, 	'In Office', 			'Y', 	'Republican Policy Committee Chairman', 		11,	1,	'WY', NULL,		'C11');
INSERT INTO SENATOR VALUES(100, 'Michael', 	'Enzi', 		'B', 		'Mike', 		'M', 	'01-Feb-1944', 	'Republican', 	1996, 	NULL, 	'In Office', 			'N', 	NULL, 							22,	2,	'WY', NULL,		'C08');
INSERT INTO SENATOR VALUES(101, 'John', 		'Kennedy', 		'F', 		'John', 		'M', 	'29-May-1917', 	'Democrat', 	1953, 	1960, 	'Elected to New Office', 	'N', 	NULL, 							7, 	NULL, 'MA', NULL, 	NULL);
INSERT INTO SENATOR VALUES(102, 'Henry', 		'Clay', 		NULL, 	'Henry', 		'M', 	'12-Apr-1777', 	'Whig', 		1831, 	1842, 	'Retired', 				'N', 	NULL, 							11, 	NULL, 'KY', NULL, 	NULL);
INSERT INTO SENATOR VALUES(103, 'John', 		'Adams', 		'Q', 		'John', 		'M', 	'11-Jul-1767', 	'Federalist', 	1803, 	1808, 	'Resigned', 			'N', 	NULL, 							5, 	NULL, 'MA', NULL, 	NULL);
INSERT INTO SENATOR VALUES(104, 'Rufus', 		'King', 		NULL, 	'Rufus', 		'M', 	'24-Mar-1755', 	'Federalist', 	1789, 	1796, 	'Resigned',				'N', 	NULL, 							7, 	NULL, 'NY', NULL, 	NULL);
INSERT INTO SENATOR VALUES(105, 'Gouverneur', 	'Morris', 		NULL, 	'Gouverneur', 	'M', 	'31-Jan-1752', 	'Federalist', 	1800, 	1803, 	'Defeated', 			'N', 	NULL, 							3, 	NULL, 'NY', NULL, 	NULL);
INSERT INTO SENATOR VALUES(107, 'Edward', 	'Brooke', 		'W', 		'Edward', 		'M', 	'26-Oct-1919', 	'Republican', 	1967, 	1979, 	'Defeated', 			'N', 	NULL, 							12, 	NULL, 'MA', NULL, 	NULL);		




GO
SELECT *
FROM SENATOR
GO
SELECT *
FROM US_STATE
GO
SELECT *
FROM BILL
GO
SELECT *
FROM SENATE_COMMITTEE
GO
SELECT *
FROM PARTY
GO

/***********************************************************************************************************************/
/* WHAT SENATORS WERE ELECTED IN THE 19TH CENTURY*/
--VIEW
CREATE VIEW Nineteenth_Century_Senators
AS
SELECT senatorNickName, senator_LName, senator_YearElected
FROM SENATOR
WHERE senator_YearElected BETWEEN 1799 AND 1900

GO

SELECT *
FROM Nineteenth_Century_Senators
/***********************************************************************************************************************/
/*WHAT SENATORS WERE ELECTED IN THE 18TH CENTURY?*/
--VIEW
GO

CREATE VIEW Eighteenth_Century_Senators
AS
SELECT senatorNickName, senator_LName, senator_YearElected
FROM SENATOR
WHERE senator_YearElected BETWEEN 1699 AND 1799

GO

SELECT *
FROM Eighteenth_Century_Senators
/***********************************************************************************************************************/
/* WHAT SENATORS WERE BORN IN THE 18TH CENTURY?*/
--VIEW
GO
CREATE VIEW Born_In_Eighteenth
AS
SELECT senatorNickName, senator_LName, senator_YearElected, senator_DOB
FROM SENATOR
WHERE YEAR(senator_DOB) BETWEEN 1700 AND 1799

GO

SELECT *
FROM Born_In_Eighteenth

GO
/***********************************************************************************************************************/
/* HOW MANY SENATORS ARE FROM A GIVEN PARTY?*/
--SPROC
CREATE PROC NUMBER
@partyName varchar(30)
AS
SELECT COUNT(senator_ID)
FROM SENATOR
WHERE senator_PartyAffiliation = @partyName

GO

EXEC NUMBER 'Democrat'
GO
EXEC NUMBER 'Republican'
GO
EXEC NUMBER 'Whig'
GO
EXEC NUMBER 'Federalist'
GO
EXEC NUMBER 'Libertarian'
GO
/***********************************************************************************************************************/
/* WHAT SENATORS ARE MALE/FEMALE AND WHAT IS THE YEAR THEIR STATE WAS FOUNDED?*/
--SPROC, JOIN
CREATE PROC GENDER
@gender char(1)
AS

SELECT S.senator_LName, U.yearFounded
FROM SENATOR S
JOIN US_STATE U
ON S.senator_State = U.stateAbbreviation
WHERE S.senatorSex = @gender

GO
EXEC GENDER 'M'
GO
EXEC GENDER 'F'
GO
/***********************************************************************************************************************/
/* WHEN A ROW IS INSERTED INTO SENATOR, COUNT AND DISPLAY THE NEW NUMBER OF SENATORS FROM THE INSERTED SENATORS PARTY*/
-- TRIGGER, CONTROL OF FLOW

GO
CREATE TRIGGER HOWMANY
ON SENATOR
AFTER INSERT
AS

IF
(SELECT I.senator_PartyAffiliation 
FROM Inserted I
) = 'Republican'
SELECT COUNT(senator_ID)
FROM SENATOR
WHERE senator_PartyAffiliation = 'Republican'
ELSE
	BEGIN
	IF
	(SELECT I.senator_PartyAffiliation
	FROM Inserted I
	) = 'Democrat'
	SELECT COUNT(senator_ID)
	FROM SENATOR
	WHERE senator_PartyAffiliation = 'Democrat'
	ELSE
		BEGIN
		IF
		(SELECT I.senator_PartyAffiliation
		FROM Inserted I
		) = 'Federalist'
		SELECT COUNT(senator_ID)
		FROM SENATOR
		WHERE senator_PartyAffiliation = 'Federalist'
		ELSE
		
			BEGIN
			IF
			(SELECT I.senator_PartyAffiliation
			FROM Inserted I
			) = 'Whig'
			SELECT COUNT(senator_ID)
			FROM SENATOR
			WHERE senator_PartyAffiliation = 'Whig'
			ELSE
			PRINT 'This senator is not from a major party.'
			END
		END
	END

GO
INSERT INTO SENATOR VALUES(023, 'John', 'Example', 'G', 'Orrin', 'M', '22-Mar-1934', 'Libertarian', 1977, 2018, 'Retired', 'Y', 41, 1, 'UT', NULL, 'C2');
GO
INSERT INTO SENATOR VALUES(024, 'Jim', 'Doe', 'M', 'Richard', 'M', '30-Nov-1955', 'Republican', 2004, NULL, 'In Office', 'N', 14, 3, 'NC', NULL, 'C3');
GO
INSERT INTO SENATOR VALUES(025, 'Sample', 'Sample', 'D', 'Mike', 'M', '20-May-1951', 'Democrat', 1998, NULL, 'In Office', 'N', 20, 3, 'ID', 'S.2155', NULL);
GO
INSERT INTO SENATOR VALUES(026, 'Example', 'Example', 'H', 'Johnny', 'M', '28-Dec-1944', 'Federalist', 2004, NULL, 'In Office', 'N', 14, 3, 'GA', 'S.2372', NULL);
GO
INSERT INTO SENATOR VALUES(027, 'Not', 'APerson', 'E', 'Tina', 'F', '04-Mar-1958', 'Whig', 2018, NULL, 'In Office', 'N', 1, 2, 'MN', 'S.3021', NULL);
GO

SELECT *
FROM SENATOR

/************************************************************************************************************************/
/* UDF CALCULATE AVERAGE CURRENT SENATOR AGE*/
-- USER DEFINED FUNCTION
GO

CREATE FUNCTION AVGAGE()
RETURNS INT
AS
RETURN
(
	SELECT AVG(2018 - YEAR(senator_DOB))
	FROM SENATOR
	WHERE senator_YearLeftOffice IS NULL
)

GO