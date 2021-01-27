*&---------------------------------------------------------------------*
*& Report z00_path_expressions
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z00_path_expressions.

SELECT FROM z00_view_15
 FIELDS carrid, connid, cityfrom, cityto, \_carrier-carrname,
 \_flights-fldate, \_flights-price, \_flights-currency
 WHERE carrid = 'LH' AND connid = '0400'
 INTO TABLE @DATA(flights).
IF sy-subrc <> 0.
ENDIF.
