@AbapCatalog.sqlViewName: 'Z00V01' //Name der SQL-View, max. 16 Zeichen
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 1: Projections'
/*
* View 1: Projections
*/
define view Z00_View_01 //Name der CDS-View, max. 30 Zeichen
  as select from scarr
{
  carrid,
  carrname,
  currcode,
  url
}
