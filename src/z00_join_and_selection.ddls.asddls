@AbapCatalog.sqlViewName: 'Z00JOIN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Join and Selection'
define view Z00_Join_And_Selection
  as select from sbook   as c
    inner join   scustom as a on c.customid = a.id
{
  key carrid     as CarrierId,
  key connid     as ConnectionId,
  key fldate     as FlightDate,
  key bookid     as BookingId,
      customid   as CustomerId,
      luggweight as LuggageWeight,
      wunit      as LuggageWeightUnit,
      class      as FlightClass,
      forcuram   as Amount,
      forcurkey  as Currency,
      counter    as Counter,
      agencynum  as TravelAgency,
      name       as Name,
      street     as Street,
      postcode   as PostCode,
      city       as City,
      country    as Country
}
where
  cancelled <> 'X'
