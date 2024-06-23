--Normalization is the process of minimizing redundancy from a relation or set of relations.
Redundancy in relation may cause insertion, deletion, and update anomalies.
So, it helps to minimize the redundancy in relations.
Normal forms are used to eliminate or reduce redundancy in database tables.

--tYPES OF NORMALISATION


--First Normal Form with Example
If a relation contains a composite or multi-valued attribute, it violates the first normal form, or the relation is in the first normal form if it does not contain any composite or multi-valued attribute. A relation is in first normal form if every attribute in that relation is single-valued attribute. 

A table is in 1 NF if: 

There are only Single Valued Attributes.
Attribute Domain does not change.
There is a unique name for every Attribute/Column.
The order in which data is stored does not matter.

--Example
 STUD_no   Stud+_name   STUD_phone    STUD_state    STUD_country
 1         Ram          1234567890    haryana        INDIA
                        3456789012   
 2         Ram          3421567890    haryana        INDIA
 3         Ramesh                     punjab         INDIA


 coversion to 1nf
  STUD_no   Stud+_name   STUD_phone    STUD_state    STUD_country
 1         Ram          1234567890    haryana        
 1         Ram          3456789012    Haryana        INDIA
 2         Ram          3421567890    haryana        INDIA
 3         Ramesh                     punjab         INDIA



--SECOND NORMAL FORM WITH EXAMLE
 The second Normal Form (2NF) is based on the concept of fully functional dependency. 
 The second Normal Form applies to relations with composite keys, that is, relations with a primary key composed of two or more attributes. 
 A relation with a single-attribute primary key is automatically in at least 2NF. A relation that is not in 2NF may suffer from the update anomalies.
 To be in the second normal form, a relation must be in the first normal form and the relation must not contain any partial dependency.

 --Example
 STUD_NO            COURSE_NO        COURSE_FEE
1                     C1                  1000
2                     C2                  1500
1                     C4                  2000
4                     C3                  1000
4                     C1                  1000
2                     C5                  2000

conversion to 2NF

         Table 1                              Table 2
STUD_NO            COURSE_NO          COURSE_NO                COURSE_FEE     
1                 C1                  C1                       1000
2                 C2                  C2                       1500
1                 C4                  C3                       1000
4                 C3                  C4                       2000
4                 C1                  C5                       2000        
2                 C5                   



--Third Normal Form (3NF)
A relation is in the third normal form, if there is no transitive dependency for non-prime attributes as well as it is in the second normal form. A relation is in 3NF if at least one of the following conditions holds in every non-trivial function dependency X –> Y.

X is a super key.
Y is a prime attribute (each element of Y is part of some candidate key).

--Example
  STUD_no   Stud+_name   STUD_age    STUD_state    STUD_country
 1         Ram          12           haryana        INDIA
 2         Ram          14           Haryana        INDIA
 3         Ramesh       16           haryana        INDIA

--To convert it in third normal form, we will decompose the relation STUDENT (STUD_NO, STUD_NAME, STUD_PHONE, STUD_STATE, STUD_COUNTRY_STUD_AGE) as:

STUDENT (STUD_NO, STUD_NAME, STUD_PHONE, STUD_STATE, STUD_AGE) 
STATE_COUNTRY (STATE, COUNTRY) 

--BCNF
Boyce–Codd Normal Form (BCNF) is based on functional dependencies that take into account all candidate keys in a relation;
however, BCNF also has additional constraints compared with the general definition of 3NF.
--Rules for BCNF
Rule 1: The table should be in the 3rd Normal Form.
Rule 2: X should be a superkey for every functional dependency (FD) X−>Y in a given relation. 
