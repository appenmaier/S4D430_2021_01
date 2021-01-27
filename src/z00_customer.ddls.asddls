@AbapCatalog.sqlViewName: 'Z00CUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer'
define view Z00_Customer
  as select from scustom
{
  id                                            as CustomerID,
  concat_with_space(form, name, 1)              as CustomerName,
  street                                        as Street,
  postcode                                      as PostCode,
  city                                          as City,
  country                                       as Country,
  @EndUserText: {
        label: 'Discount',
        quickInfo: 'Discount'
  }
  division(cast(discount as abap.int1), 100, 2) as Discount
}
