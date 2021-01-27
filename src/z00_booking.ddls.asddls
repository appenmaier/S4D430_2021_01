@AbapCatalog.sqlViewName: 'Z00BOOK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Booking'
define view Z00_Booking
  as select from sbook
{
  key carrid                                as CarrierId,
  key connid                                as ConnectionId,
  key fldate                                as FlightDate,
  key bookid                                as BookingId,
      customid                              as CustomerId,
      @Semantics.quantity.unitOfMeasure: 'LuggageWeightUnit'
      luggweight                            as LuggageWeight,
      @Semantics.unitOfMeasure: true
      wunit                                 as LuggageWeightUnit,
      @EndUserText: {
            label: 'Flight Class',
            quickInfo: 'Flight Class'
      }
      case class
        when 'Y' then 'Economy Class'
        when 'F' then 'First Class'
        when 'C' then 'Business Class'
        else ''
      end                                   as FlightClass,
      @Semantics.amount.currencyCode: 'Currency'
      currency_conversion(
        amount => forcuram,
        source_currency => forcurkey,
        target_currency => cast('USD' as abap.cuky),
        exchange_rate_date => order_date )  as Amount,
      @Semantics.currencyCode: true
      cast('USD' as abap.cuky)              as Currency,
      counter                               as Counter,
      agencynum                             as TravelAgency,
      dats_days_between(order_date, fldate) as DaysAhead
}
where
  cancelled <> 'X'
