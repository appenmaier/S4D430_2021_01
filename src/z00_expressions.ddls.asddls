@AbapCatalog.sqlViewName: 'Z00EXPR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 9: Expressions'
define view Z00_Expressions
  as select from sbook   as c
    inner join   scustom as a on c.customid = a.id
{
  key carrid                                        as CarrierID,
  key connid                                        as ConnectionId,
  key fldate                                        as FlightDate,
  key bookid                                        as BookingId,
      customid                                      as CustomerId,
      @Semantics.quantity.unitOfMeasure: 'LuggageWeightUnit'
      luggweight                                    as LuggageWeight,
      @Semantics.unitOfMeasure: true
      wunit                                         as LuggageWeightUnit,
      @EndUserText: {
            label: 'Flight Class',
            quickInfo: 'Flight Class'
      }
      case class
        when 'Y' then 'Economy Class'
        when 'F' then 'First Class'
        when 'C' then 'Business Class'
        else ''
      end                                           as FlightClass,
      @Semantics.amount.currencyCode: 'Currency'
      currency_conversion(
        amount => forcuram,
        source_currency => forcurkey,
        target_currency => cast('USD' as abap.cuky),
        exchange_rate_date => order_date )          as Amount,
      @Semantics.currencyCode: true
      cast('USD' as abap.cuky)                      as Currency,
      counter                                       as Counter,
      agencynum                                     as TravelAgency,
      concat_with_space(form, name, 1)              as CustomerName,
      street                                        as Street,
      postcode                                      as PostCode,
      city                                          as City,
      country                                       as Country,
      @EndUserText: {
            label: 'Discount',
            quickInfo: 'Discount'
      }
      division(cast(discount as abap.int1), 100, 2) as Discount,
      dats_days_between(order_date, fldate)         as DaysAhead
}
where
  cancelled <> 'X'
