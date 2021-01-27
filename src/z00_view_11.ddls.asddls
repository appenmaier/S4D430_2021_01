@AbapCatalog.sqlViewName: 'Z00V11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 11: Joins'
define view Z00_View_11
  as select from    spfli as c
  //    inner join   scarr as a on c.carrid = a.carrid
    left outer join scarr as a on c.carrid = a.carrid
  //    right outer join scarr as a on c.carrid = a.carrid
  //    cross join   scarr as a
{
  key c.carrid,
  key connid,
      carrname,
      cityfrom,
      cityto
}
union select from  spfli as c
  right outer join scarr as a on c.carrid = a.carrid
{
  key c.carrid,
  key connid,
      carrname,
      cityfrom,
      cityto
}
