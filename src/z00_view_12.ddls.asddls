@AbapCatalog.sqlViewName: 'Z00V12'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 12: Unions'
define view Z00_View_12
  as select from scustom
{
  key id
}
where
  city = 'Stuttgart'
union all select from sbook
{
  key customid as id
}
where
     agencynum = '00000116'
  or agencynum = '00000284'
