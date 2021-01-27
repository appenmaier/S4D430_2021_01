@AbapCatalog.sqlViewName: 'Z00V03'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 3: Annotations'
define view Z00_View_03
  as select from sflight
{
  key carrid,
  key connid,
  key fldate,
      @Semantics.amount.currencyCode: 'currency'
      price,
      @Semantics.currencyCode: true
      currency,
      paymentsum @<Semantics.amount.currencyCode: 'currency'
}
// für Mengen und Einheiten
// @Semantics.quantity.unitOfMeasure: '<Feld>'
// @Semantics.unitOfMeasure: true
