@AbapCatalog.sqlViewName: 'ZFX_V_ART003'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista de arte'
@Metadata.ignorePropagatedAnnotations: true
define view ZFX_CDS_ART_003 as select from zsvss_tab_art_fx
{
    key id_art as IdArt,
    descr as Descr,
    descr2 as Descr2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    case
    when stock = 0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2
    when stock >= 100 then 3
    else 0
    end as status
}
