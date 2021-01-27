@AbapCatalog.sqlViewName: 'Z00V15'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 15: Associations'
define view Z00_View_15
  as select from spfli as c
  association [1]    to scarr   as _carrier on  c.carrid = _carrier.carrid
  association [0..*] to sflight as _flights on  _flights.carrid = c.carrid
                                            and _flights.connid = c.connid
{
  key c.carrid,
  key c.connid,
      c.cityfrom,
      c.cityto,
      _carrier,
      _flights
}
