@AbapCatalog.sqlViewName: 'Z00V09A'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View: Carrier'
define view Z00_View_09a
  as select from scarr
{
  key carrid   as CarrierId,
      carrname as CarrierName,
      currcode as CurrencyCode,
      url      as URL
}
