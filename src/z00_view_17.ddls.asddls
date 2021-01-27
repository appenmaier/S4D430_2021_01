@AbapCatalog.sqlViewName: 'Z00V17'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 17: Path Expressions Part 2'
define view Z00_View_17
  as select from Z00_View_16
{
  key CarrierId,
  key ConnectionId,
      CarrierName,
      CityFrom,
      CityTo,
      sum(_flights.seatsocc) as OccupiedSeats
}
group by
  CarrierId,
  ConnectionId,
  CarrierName,
  CityFrom,
  CityTo
