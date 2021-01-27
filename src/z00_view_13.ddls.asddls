@AbapCatalog.sqlViewName: 'Z00V13'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 13: Parameters Part 1: Definition'
define view Z00_View_13
  with parameters
    CarrierId    : s_carr_id,
    ConnectionId : s_conn_id
  as select from sflight
{
  key carrid,
  key connid,
  key fldate,
      price,
      currency
}
where
      carrid = $parameters.CarrierId
  and connid = $parameters.ConnectionId
