@AbapCatalog.sqlViewName: 'Z00CUSTREV2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer with Parameter'
define view Z00_Customer_With_Parameter
  with parameters
    FlightsBefore : abap.dats @<Environment.systemField: #SYSTEM_DATE
  as select from Z00_Booking_And_Customer
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
      CustomerId,
      CustomerName,
      Street,
      PostCode,
      City,
      Country,
      Discount
}
where
  FlightDate < $parameters.FlightsBefore
