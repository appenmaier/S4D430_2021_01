@AbapCatalog.sqlViewName: 'Z00V05'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 5: Arithmetic Expressions and Type Cast'
define view Z00_View_05
  as select from sflight
{
  seatsmax,
  seatsocc,
  seatsmax - seatsocc                      as seatsfree,
  seatsocc + seatsocc_b + seatsocc_f       as seatsocc_total,
  price * 2                                as double_price,
  ( cast(seatsocc as abap.fltp)
   / cast(seatsmax as abap.fltp) ) * 100.0 as ratio,
  cast('LH' as s_carr_id)                  as carrid,
  cast(22 as abap.dec(16,2))               as decimal1
  // cast(10.0 as abap.dec(16,2))             as decimal2
}
