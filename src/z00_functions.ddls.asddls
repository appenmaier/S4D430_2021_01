@AbapCatalog.sqlViewName: 'Z00FUNC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Functions'
define view Z00_Functions
  as select from sbook   as c
    inner join   scustom as a on c.customid = a.id
{
  key carrid                              as CarrierId,
  key connid                              as ConnectionId,
  key fldate                              as FlightDate,
  key bookid                              as BookingId,
      customid                            as CustomerId,
      @Semantics.quantity.unitOfMeasure: 'LuggageWeightUnit'
      luggweight                          as LuggageWeight,
      @Semantics.unitOfMeasure: true
      wunit                               as LuggageWeightUnit,
      @EndUserText: {
            label: 'Flight Class',
            quickInfo: 'Flight Class'
      }
      case class
        when 'Y' then 'Economy Class'
        when 'F' then 'First Class'
        when 'C' then 'Business Class'
        else ''
      end                                 as FlightClass,
      @Semantics.amount.currencyCode: 'Currency'
      forcuram                            as Amount,
      @Semantics.currencyCode: true
      forcurkey                           as Currency,
      counter                             as Counter,
      agencynum                           as TravelAgency,
      name                                as Name,
      street                              as Street,
      postcode                            as PostCode,
      city                                as City,
      country                             as Country,
      @EndUserText: {
            label: 'Discount',
            quickInfo: 'Discount'
      }
      cast(discount as abap.fltp) / 100.0 as Discount
}
where
  cancelled <> 'X'
