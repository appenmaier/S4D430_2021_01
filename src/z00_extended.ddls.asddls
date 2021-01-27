@AbapCatalog.sqlViewName: 'Z00EXTENDED'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Associations'
define view Z00_Extended
  as select from Z00_Booking as c
  association [1] to Z00_Customer as _customer on c.CustomerId = _customer.CustomerID
{
  key CarrierId,
  key ConnectionId,
  key FlightDate,
  key BookingId,
      LuggageWeight,
      LuggageWeightUnit,
      Amount,
      Currency,
      TravelAgency,
      DaysAhead,
      c.CustomerId,
      _customer
}
