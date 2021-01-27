@AbapCatalog.sqlViewName: 'Z00V09C'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite View: Carrier - Connection'
define view Z00_View_09c
  as select from Z00_View_09a as c
    inner join   Z00_View_09b as a on c.CarrierId = a.CarrierId
{
  key a.CarrierId,
  key ConnectionId,
      CityFrom,
      CityTo,
      Distance,
      DistanceUnit,
      CarrierName,
      CurrencyCode,
      URL
}
