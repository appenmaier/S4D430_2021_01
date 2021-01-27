@AbapCatalog.sqlViewName: 'Z00AUTH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Authorizations'
define view Z00_Authorizations
  as select from Z00_Booking as c
  association [1] to Z00_Customer as _customer on c.CustomerId = _customer.CustomerID
{
  key CarrierId,
  key ConnectionId,
  key FlightDate,
  key BookingId,
      LuggageWeight,
      LuggageWeightUnit,
      FlightClass,
      Amount,
      Currency,
      Counter,
      TravelAgency,
      DaysAhead,
      c.CustomerId,
      _customer
}
