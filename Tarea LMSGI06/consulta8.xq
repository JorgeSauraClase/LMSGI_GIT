(: consulta8.xq :)
(: Filtra las impresoras que tienen al menos un tamaño A3 :)

(: 
  Este código XQuery realiza las siguientes acciones:

  1. Abre el documento XML llamado "impresoras".
  2. Selecciona todos los elementos <impresora> dentro del documento.
  3. Filtra los elementos <impresora> para aquellos que tienen al menos un elemento <tamaño> con el valor "A3".
  4. Para cada impresora que cumple con la condición, extrae el contenido de los elementos <marca> y <modelo>.
  5. Crea un nuevo elemento <impresora> que contiene los elementos <marca> y <modelo> con los valores extraídos.
  6. Devuelve el nuevo elemento <impresora> para cada impresora en el documento original que cumple con la condición.
:)

for $impresora in doc("impresoras.xml")//impresora
where $impresora/tamaño = "A3"
return 
  <impresora>
    <marca>{ $impresora/marca/text() }</marca>
    <modelo>{ $impresora/modelo/text() }</modelo>
  </impresora>
