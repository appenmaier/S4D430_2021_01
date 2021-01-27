@AbapCatalog.sqlViewName: 'Z00V08'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 8: Date Calculations'
define view Z00_View_08
  as select from sbook
{
  order_date,
  fldate,
  dats_days_between(order_date, fldate) as days_ahead,
  dats_add_days(order_date, 14, 'FAIL') as due_date
}
