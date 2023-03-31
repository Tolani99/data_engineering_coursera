--Creating this unnormalized table is possible and can be written in SQL form as follows.    
CREATE TABLE Surgery  (DoctorID VARCHAR(10), DoctorName VARCHAR(50), Region VARCHAR(20), PatientID VARCHAR(10), PatientName VARCHAR(50), SurgeryNumber INT, Council  VARCHAR(20), Postcode VARCHAR(10), SlotID VARCHAR(5), TotalCost Decimal);
/*
First Normal Form
To simplify the data structure of the surgery table, let’s apply the first normal form rules to enforce the data atomicity rule and eliminate unnecessary repeating groups of data. The data atomicity rule means that you can only have one single instance value of the column attribute in any cell of the table.

The atomicity problem only exists in the columns of data related to the patients. Therefore, it is important to create a new table for patient data to fix this. In other words, you can organize all data related to the patient entity in one separate table, where each cell of any column contains only one single instance of data as depicted in the following example.
This table includes one single instance of data in each cell, which makes it much simpler to read and understand. However, the patient table requires two columns: the patient ID and the Slot ID together to identify each record in a unique way. This means that you need a composite primary key in this table. To create this table in SQL you can write the following code:  
*/
CREATE TABLE Patient  (PatientID VARCHAR(10) NOT NULL, PatientName VARCHAR(50), SlotID VARCHAR(10) NOT NULL, TotalCost Decimal,  CONSTRAINT PK_Patient PRIMARY KEY (PatientID, SlotID));
/*You may have noticed that the table also contains repeating groups of data in each column. You can fix this by separating the table into two tables of data: the doctor table and the surgery table, where each table deals with one specific entity.*/
CREATE TABLE Doctor  (DoctorID VARCHAR(10), DoctorName VARCHAR(50), PRIMARY KEY (DoctorID));  

/*Similarly, the surgery table can have the surgery number as a single column primary key. The surgery table can be created in SQL by writing the following code:*/
CREATE TABLE Surgery  (SurgeryNumber INT NOT NULL, Region VARCHAR(20), Council  VARCHAR(20), Postcode VARCHAR(10), PRIMARY KEY (SurgeryNumber));

/*Second normal form
In the second normal form, you need to avoid any partial dependency relationships between data. Partial dependency refers to tables with a composite primary key. Namely a key that consists of a combination of two or more columns, where a non-key attribute value depends only on one part of the composite key.
In the patient table, you need to check whether there are any non-key attributes depending on one part of the composite key. For example, the patient's name is a non-key attribute, and it can be determined by using the patient ID only.

Similarly, you can determine the total cost by using the Slot ID only. This is called partial dependency, which is not allowed in the second normal form. This is because all non-key attributes should be determined by using both parts of the composite key, not only one of them.
The new patient table can be created in SQL using the following code:
*/

CREATE TABLE Patient  (PatientID VARCHAR(10) NOT NULL, PatientName, VARCHAR(50), PRIMARY KEY (PatientID));

/*However, in the appointment table, you need to add a unique key to ensure you have a primary key that can identify each unique record in the table. Therefore, the appointment ID attribute can be added to the table with a unique value in each row of the table.
The new appointments table can be created in SQL using the following code:
*/
CREATE TABLE Appointments  (AppointmentID INT NOT NULL, SlotID, VARCHAR(10),  TotalCost Decimal, PRIMARY KEY (AppointmentID));

/*Third normal form
For a relation in a database to be in the third normal form, it must already be in the second normal form (2NF). In addition, it must have no transitive dependency. This means that any non-key attribute in the surgery table may not be functionally dependent on another non-key attribute in the same table. In the surgery table, the postcode and the council are non-key attributes, and the postcode is dependent on the council. Therefore, if you change the council value, you must also change the postcode. This is called transitive dependency, which is not allowed in the third normal form.The new surgery location table can be created in SQL using the following code:*/

CREATE TABLE Location  (SurgeryNumber INT NOT NULL, Postcode VARCHAR(10), PRIMARY KEY (SurgeryNumber));

/*The new surgery council table can be created in SQL using the following code:*/

CREATE TABLE Council  (Council VARCHAR(20) NOT NULL, Region VARCHAR(20), PRIMARY KEY (Council));


