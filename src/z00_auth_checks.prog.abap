*&---------------------------------------------------------------------*
*& Report z00_auth_checks
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z00_auth_checks.

SELECT FROM spfli
 FIELDS *
 INTO TABLE @DATA(connections).
IF sy-subrc <> 0.
ENDIF.

LOOP AT connections INTO DATA(connection).
  AUTHORITY-CHECK OBJECT 'S_CARRID'
      ID 'CARRID' FIELD connection-carrid
      ID 'ACTVT' FIELD '03'.
  IF sy-subrc <> 0.
    DELETE connections INDEX sy-tabix.
  ENDIF.
ENDLOOP.
