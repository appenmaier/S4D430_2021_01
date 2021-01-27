@AbapCatalog.sqlViewName: 'Z00V10'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 10: Aggregations'
define view Z00_View_10
  as select from sflight
{
  carrid,
  connid,
  count(*)                                             as count1,
  count(distinct planetype)                            as count_distinct1,
  sum(seatsocc)                                        as sum1,
  avg(seatsocc as abap.dec(16, 0))                     as avg1,
  min(seatsocc)                                        as min1,
  max(seatsocc)                                        as max1,
  sum(case when seatsocc = seatsmax then 1 else 0 end) as sum2
}
group by
  carrid,
  connid
having
  sum(seatsocc) > 3500
