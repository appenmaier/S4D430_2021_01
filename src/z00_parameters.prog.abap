*&---------------------------------------------------------------------*
*& Report z00_parameters
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z00_parameters.

PARAMETERS carrid TYPE s_carr_id.
PARAMETERS connid TYPE s_conn_id.

SELECT FROM z00_view_14( carrierid = @carrid, connectionid = @connid )
 FIELDS *
 INTO TABLE @DATA(flights).
IF sy-subrc <> 0.
ENDIF.

SELECT FROM sflight
 FIELDS *
* WHERE carrid = @carrid AND connid = @connid
 INTO TABLE @DATA(flights2).
IF sy-subrc <> 0.
ENDIF.
