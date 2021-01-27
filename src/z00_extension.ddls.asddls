@AbapCatalog.sqlViewAppendName: 'Z00EXTENSION'
@EndUserText.label: 'Extension'
extend view Z00_Extended with Z00_Extension
  association [1] to spfli as _connection on  c.carrierid    = _connection.carrid
                                          and c.connectionid = _connection.connid
{
  FlightClass,
  Counter,
  _connection
}
