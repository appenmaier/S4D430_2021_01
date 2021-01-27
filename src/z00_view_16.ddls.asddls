@AbapCatalog.sqlViewName: 'Z00V16'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 16: Path Expressions Part 1'
define view Z00_View_16
  as select from Z00_View_15
{
  key carrid            as CarrierId,
  key connid            as ConnectionId,
      _carrier.carrname as CarrierName,
      cityfrom          as CityFrom,
      cityto            as CityTo,
      _flights
}
