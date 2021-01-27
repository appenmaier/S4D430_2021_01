@AbapCatalog.sqlViewName: 'Z00SIMPLE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Simple'
define view Z00_Simple
  as select from sbook
{
  key carrid,
  key connid,
  key fldate,
  key bookid,
      customid,
      luggweight,
      wunit,
      class,
      forcuram,
      forcurkey,
      counter,
      agencynum
}
