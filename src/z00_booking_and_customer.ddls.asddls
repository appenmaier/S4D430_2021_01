@AbapCatalog.sqlViewName: 'Z00BOOKCUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Booking and Customer'
define view Z00_Booking_And_Customer
  as select from Z00_Booking  as c
    inner join   Z00_Customer as a on c.CustomerId = a.CustomerID
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
      CustomerName,
      Street,
      PostCode,
      City,
      Country,
      Discount
}
