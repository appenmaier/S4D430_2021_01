@AbapCatalog.sqlViewName: 'Z00V09B'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View: Connection'
define view Z00_View_09b
  as select from spfli
{
  key carrid                                      as CarrierId,
  key connid                                      as ConnectionId,
      cityfrom                                    as CityFrom,
      cityto                                      as CityTo,
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      unit_conversion(
          quantity => distance,
          source_unit => distid,
          target_unit => cast('KM' as abap.unit)) as Distance,
      @Semantics.unitOfMeasure: true
      cast('KM' as abap.unit)                     as DistanceUnit
}
