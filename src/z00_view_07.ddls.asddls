@AbapCatalog.sqlViewName: 'Z00V07'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 7: Unit and Currency Conversions'
define view Z00_View_07
  as select from spfli   as a
    inner join   sflight as c on  a.carrid = c.carrid
                              and a.connid = c.connid
{
  price                                      as price_old,
  currency                                   as currency_old,
  currency_conversion(
    amount => price,
    source_currency => currency,
    target_currency => cast('EUR' as abap.cuky),
    exchange_rate_date => fldate )           as price_new,
  cast('EUR' as abap.cuky)                   as currency_new,
  distance                                   as distance_old,
  distid                                     as distance_unit_old,
  unit_conversion(
    quantity => distance,
    source_unit => distid,
    target_unit => cast('KM' as abap.unit) ) as distance_new,
  cast('KM' as abap.unit)                    as distance_unit_new
}
