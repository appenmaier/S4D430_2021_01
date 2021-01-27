@AbapCatalog.sqlViewName: 'Z00CUSTASSO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer with Path'
define view Z00_Customer_With_Path
  as select from Z00_Associations
{
  key CustomerId,
      _customer.CustomerName,
      _customer.Street,
      _customer.PostCode,
      _customer.City,
      _customer.Country,
      @Semantics.amount.currencyCode: 'Currency'
      @EndUserText.label: 'Total Amount'
      sum(Amount)                      as TotalAmount,
      Currency,
      avg(DaysAhead as abap.dec(16,0)) as DaysAhead
}
group by
  CustomerId,
  _customer.CustomerName,
  _customer.Street,
  _customer.PostCode,
  _customer.City,
  _customer.Country,
  Currency
