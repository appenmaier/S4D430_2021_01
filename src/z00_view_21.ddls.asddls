@AbapCatalog.sqlViewName: 'Z00FV21'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 21: Access Control'
define view Z00_View_21
  as select from spfli
{
  key carrid,
  key connid,
      countryfr,
      cityfrom,
      airpfrom,
      countryto,
      cityto,
      airpto,
      fltime,
      deptime,
      arrtime,
      distance,
      distid,
      fltype,
      period
}
