@AbapCatalog.sqlViewName: 'Z00CUSTREV'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer with Revenue'
define view Z00_Customer_With_Revenue
  as select from Z00_Booking_And_Customer
{
  key CustomerId,
      CustomerName,
      Street,
      PostCode,
      City,
      Country,
      @Semantics.amount.currencyCode: 'Currency'
      @EndUserText.label: 'Total Amount'
      sum(Amount)                      as TotalAmount,
      Currency,
      avg(DaysAhead as abap.dec(16,0)) as DaysAhead
}
group by
  CustomerId,
  CustomerName,
  Street,
  PostCode,
  City,
  Country,
  Currency
