@AbapCatalog.sqlViewName: 'Z00V14'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 14: Parameters Part 2: Usage'
define view Z00_View_14
  with parameters
    CarrierId    : s_carr_id,
    ConnectionId : s_conn_id,
    FlightsAfter : abap.dats @<Environment.systemField: #SYSTEM_DATE
  as select from Z00_View_13(
                 CarrierId: $parameters.CarrierId,
                 ConnectionId: $parameters.ConnectionId )
{
  key carrid,
  key connid,
  key fldate,
      price,
      currency
}
where
  fldate > $parameters.FlightsAfter
