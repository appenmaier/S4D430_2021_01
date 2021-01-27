*&---------------------------------------------------------------------*
*& Report z00_opensql_select
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z00_opensql_select.

* SELECT-Syntax bis SAP NW 7.40
DATA connections2 TYPE TABLE OF spfli.

SELECT carrid connid cityfrom cityto
 FROM spfli
 INTO CORRESPONDING FIELDS OF TABLE connections2
 WHERE carrid = 'LH'.
IF sy-subrc <> 0.
ENDIF.

* SELECT-Syntax ab SAP NW 7.50
SELECT FROM spfli
 FIELDS carrid, connid, cityfrom, cityto
 WHERE carrid = 'LH'
 INTO TABLE @DATA(connections).
IF sy-subrc <> 0.
ENDIF.
