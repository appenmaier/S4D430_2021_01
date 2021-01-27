@AbapCatalog.sqlViewAppendName: 'Z00V20'
@EndUserText.label: 'View 20: View Extensions Part 2'
extend view Z00_View_19 with Z00_View_20
  association [*] to spfli as _connections on scarr.carrid = _connections.carrid
{
  currcode,
  url,
  _connections
}
