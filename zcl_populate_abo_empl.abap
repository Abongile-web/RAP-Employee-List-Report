CLASS zcl_populate_abo_empl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_populate_abo_empl IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA: lt_empl TYPE STANDARD TABLE OF zdb_abo_empl WITH EMPTY KEY.

        lt_empl = VALUE #(
      ( emplid = '0001' fname = 'Abongile' lname = 'Ndlovu'     gender = 'M' designation = 'ABAP Developer' )
      ( emplid = '0002' fname = 'Lerato'   lname = 'Khumalo'    gender = 'F' designation = 'SAP Consultant' )
      ( emplid = '0003' fname = 'Thabo'    lname = 'Mokoena'    gender = 'M' designation = 'Solution Architect' )
      ( emplid = '0004' fname = 'Zanele'   lname = 'Dlamini'    gender = 'F' designation = 'Data Analyst' )
      ( emplid = '0005' fname = 'Sipho'    lname = 'Nkosi'      gender = 'M' designation = 'Project Manager' )
      ( emplid = '0006' fname = 'Naledi'   lname = 'Molefe'     gender = 'F' designation = 'UI5 Developer' )
      ( emplid = '0007' fname = 'Kabelo'   lname = 'Sithole'    gender = 'M' designation = 'Basis Admin' )
      ( emplid = '0008' fname = 'Ayanda'   lname = 'Mthembu'    gender = 'F' designation = 'Security Analyst' )
      ( emplid = '0009' fname = 'Bongani'  lname = 'Zuma'       gender = 'M' designation = 'Business Analyst' )
      ( emplid = '0010' fname = 'Precious' lname = 'Mahlangu'   gender = 'F' designation = 'QA Engineer' )
      ( emplid = '0011' fname = 'Tshepo'   lname = 'Ngcobo'     gender = 'M' designation = 'Scrum Master' )
      ( emplid = '0012' fname = 'Nomsa'    lname = 'Tshabalala' gender = 'F' designation = 'Product Owner' )
      ( emplid = '0013' fname = 'Mandla'   lname = 'Maseko'     gender = 'M' designation = 'DevOps Engineer' )
      ( emplid = '0014' fname = 'Busisiwe' lname = 'Radebe'     gender = 'F' designation = 'Cloud Architect' )
      ( emplid = '0015' fname = 'Sibusiso' lname = 'Nxumalo'    gender = 'M' designation = 'Integration Lead' )
      ( emplid = '0016' fname = 'Khanyi'   lname = 'Mbatha'     gender = 'F' designation = 'Support Specialist' )
      ( emplid = '0017' fname = 'Lwandile' lname = 'Cele'       gender = 'M' designation = 'UX Designer' )
      ( emplid = '0018' fname = 'Thandiwe' lname = 'Gumede'     gender = 'F' designation = 'Database Admin' )
      ( emplid = '0019' fname = 'Kagiso'   lname = 'Tau'        gender = 'M' designation = 'Team Lead' )
      ( emplid = '0020' fname = 'Palesa'   lname = 'Mofokeng'   gender = 'F' designation = 'System Analyst' )
    ).

    MODIFY zdb_abo_empl FROM TABLE @lt_empl.

    IF sy-subrc = 0.
      out->write( |{ sy-dbcnt } employee records saved to ZDB_ABO_EMPL.| ).
    ELSE.
      out->write( 'Failed to save employee records.' ).
    ENDIF.


    ENDMETHOD.
ENDCLASS.