@AbapCatalog.sqlViewName: 'Z00V19'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 19: View Extensions'
define view Z00_View_19
  as select from scarr
{
  key carrid,
      carrname
}
