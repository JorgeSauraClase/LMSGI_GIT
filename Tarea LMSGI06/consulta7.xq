(: consulta7.xq :)
(: Filtra las impresoras que tienen más de un tamaño :)

(: 
  Este código XQuery realiza las siguientes acciones:

  1. Abre el documento XML llamado "impresoras".
  2. Selecciona todos los elementos <impresora> dentro del documento.
  3. Filtra los elementos <impresora> para aquellos que tienen más de un elemento <tamaño>.
  4. Para cada impresora que cumple con la condición, extrae el contenido de los elementos <marca> y <modelo>.
  5. Crea un nuevo elemento <impresora> que contiene los elementos <marca> y <modelo> con los valores extraídos.
  6. Devuelve el nuevo elemento <impresora> para cada impresora en el documento original que cumple con la condición.
:)

for $impresora in doc("impresoras.xml")//impresora
where count($impresora/tamaño) > 1
return 
  <impresora>
    <marca>{ $impresora/marca/text() }</marca>
    <modelo>{ $impresora/modelo/text() }</modelo>
  </impresora>
