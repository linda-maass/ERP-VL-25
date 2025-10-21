CLASS z_testfirstclass DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_testfirstclass IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA variable TYPE string.
  variable = 'Hello World'.
  out->write( variable ).


  ENDMETHOD.
ENDCLASS.
