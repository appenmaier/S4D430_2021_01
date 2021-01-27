@AbapCatalog.sqlViewName: 'Z00PARTREV'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Partner with Revenue'
define view Z00_Partner_With_Revenue
  as select from Z00_Customer_With_Revenue
{
  key CustomerId,
      'C' as Type,
      CustomerName,
      Street,
      PostCode,
      City,
      Country,
      TotalAmount,
      Currency,
      DaysAhead
}
union select from S4d430_Agency_With_Revenue
{
  key id         as CustomerId,
      'A'        as Type,
      name       as CustomerName,
      street     as Street,
      postcode   as PostCode,
      city       as City,
      country    as Country,
      amount     as TotalAmount,
      currency   as Currency,
      days_ahead as DaysAhead
}
