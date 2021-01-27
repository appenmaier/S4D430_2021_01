@AbapCatalog.sqlViewName: 'Z00ANNO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Annotations'
define view Z00_Annotations
  as select from sbook   as c
    inner join   scustom as a on c.customid = a.id
{
  key carrid     as CarrierID,
  key connid     as ConnectionID,
  key fldate     as FlightDate,
  key bookid     as BookingId,
      customid   as CustomerId,
      @Semantics.quantity.unitOfMeasure: 'LuggageWeightUnit'
      luggweight as LuggageWeight,
      @Semantics.unitOfMeasure: true
      wunit      as LuggageWeightUnit,
      class      as FlightClass,
      @Semantics.amount.currencyCode: 'Currency'
      forcuram   as Amount,
      @Semantics.currencyCode: true
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
