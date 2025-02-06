(: consulta10.xq :)
(: Extrae los modelos de impresoras que tienen el nodo 'enred' presente :)

(: 
  Este código XQuery realiza las siguientes acciones:

  1. Abre el documento XML llamado "impresoras".
  2. Selecciona todos los elementos <impresora> dentro del documento.
  3. Filtra los elementos <impresora> para aquellos que tienen un nodo <enred> presente.
  4. Para cada impresora que cumple con la condición, extrae el contenido del elemento <modelo>.
  5. Devuelve el texto del elemento <modelo> para cada impresora que cumple con la condición.
:)

for $impresora in doc("impresoras.xml")//impresora
where $impresora/enred
return $impresora/modelo
