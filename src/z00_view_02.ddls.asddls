@AbapCatalog.sqlViewName: 'Z00V02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 2: Selections and Inner Joins'
define view Z00_View_02
  as select from spfli   as a
    inner join   scarr   as c on a.carrid = c.carrid
    inner join   sflight as b on  a.carrid = b.carrid
                              and a.connid = b.connid
{
  key a.carrid as CarrierId,
  key a.connid as ConnectionId,
  key fldate   as FlightDate,
      carrname as CarrierName,
      cityfrom as CityFrom,
      cityto   as CityTo,
      price    as Price,
      currency as CurrencyCode
}
where
  fltype <> 'X' //Charterflüge ausblenden
