@AbapCatalog.sqlViewName: 'Z00V06'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 6: Built-In Functions'
define view Z00_View_06
  as select from sflight
{
  div(5, 3)                                              as div1,
  mod(5, 3)                                              as mod1,
  division(5, 3, 2)                                      as division1,
  abs(-3)                                                as abs1,
  price,
  round(price, 1)                                        as round1,
  round(price, -2)                                       as round2,
  concat('Hallo', 'Welt')                                as concat1,
  concat_with_space('Hallo', 'Welt', 1)                  as concat_with_space1,
  replace(replace('Hallo Welt', 'a', 'e'), 'elt', 'ord') as replace1,
  substring('Hallo Welt', 7, 4)                          as substring1,
  right('Hallo Welt', 4)                                 as right1,
  length('1  ')                                          as length1,
  length('  3')                                          as length2,
  fltp_to_dec(10.0 as abap.dec(16, 2))                   as fltp_to_dec1
}
