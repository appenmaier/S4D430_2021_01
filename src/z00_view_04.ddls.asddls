@AbapCatalog.sqlViewName: 'Z00V04'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 4: Literals and Cases'
define view Z00_View_04
  as select from sbook
{
  'Hallo Welt' as string1,
  42           as int1,
  3.14         as fltp1,
  class,
  @EndUserText.label: 'Flight Class'
  case class
    when 'Y' then 'Economy Class'
    when 'C' then 'Business Class'
    when 'F' then 'First Class'
    else class
  end          as class_txt,
  luggweight,
  wunit,
  case when class = 'F' then ''
       when wunit = 'KG' and luggweight > 20 then 'X'
       when wunit = 'LB' and luggweight > 44 then 'X'
       else ''
  end          as excess_luggage
}
