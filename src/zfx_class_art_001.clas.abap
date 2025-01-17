CLASS zfx_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zfx_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_art TYPE STANDARD TABLE OF zsvss_tab_art_fx.

    lt_art = VALUE #(
    ( client = sy-mandt id_art = 1 descr = 'Ford' descr2 = 'Fiesta' color = 'azul'  piezas = 3 stock = 3
    url = 'https://articulo.tucarro.com.ve/MLV-819179082-ford-fiesta-move-_JM#polycard_client=search-nordic&position=1&search_layout=grid&type=item&tracking_id=bfb3ecdf-434c-4a84-b530-65c314044bd6' )

     ( client = sy-mandt id_art = 2 descr = 'Chevrolet' descr2 = 'Tahoe' color = 'blanca'  piezas = 2 stock = 4
    url = 'https://articulo.tucarro.com.ve/MLV-814415128-chevrolet-tahoe-_JM#polycard_client=search-nordic&position=8&search_layout=grid&type=item&tracking_id=be482ed0-5b47-4fd3-8cca-cb5c7aa1bbd8' )

    ( client = sy-mandt id_art = 3 descr = 'Dodge' descr2 = 'Forza' color = 'roja'  piezas = 1 stock = 5
    url = 'https://articulo.tucarro.com.ve/MLV-768626535-dodge-forza-sincronico-_JM#polycard_client=search-nordic&position=3&search_layout=grid&type=item&tracking_id=bb27d6e2-5cb8-4565-a076-87efcaed5b6e' )

    ( client = sy-mandt id_art = 4 descr = 'Toyota' descr2 = 'Corolla' color = 'roja'  piezas = 2 stock = 2
    url = 'https://articulo.tucarro.com.ve/MLV-822624154-toyota-corolla-gli-sincronico-18-lts-_JM#polycard_client=search-nordic&position=12&search_layout=grid&type=item&tracking_id=12220640-eab3-456c-a2dd-f949f991e978' )
    ).

    INSERT zsvss_tab_art_fx FROM TABLE @lt_art.

    IF sy-subrc EQ 0.
      out->write( 'Guardado con exito' ).
    ELSE.
      out->write( 'Error al guardar' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
