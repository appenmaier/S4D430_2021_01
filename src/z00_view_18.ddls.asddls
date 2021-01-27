@AbapCatalog.sqlViewName: 'Z00V18'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 18: Filter Expressions'
define view Z00_View_18
  with parameters
    Language : syst_langu @<Environment.systemField: #SYSTEM_LANGUAGE
  as select from scarr as c
  association [*] to tcurt as _currency on c.currcode = _currency.waers
  //                                        and spras      = $parameters.Language
{
  key carrid,
      carrname,
      currcode,
      _currency[1:spras = $parameters.Language].ktext,
      _currency[1:spras = $parameters.Language].ltext,
      url
}
