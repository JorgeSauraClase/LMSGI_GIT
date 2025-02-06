(: consulta6.xq :)
(: Extrae los modelos de impresoras cuyo tipo es 'láser' :)

(: 
  Este código XQuery realiza las siguientes acciones:

  1. Abre el documento XML llamado "impresoras".
  2. Selecciona todos los elementos <impresora> dentro del documento.
  3. Filtra los elementos <impresora> para aquellos cuyo atributo @tipo tiene el valor "láser".
  4. Para cada impresora que cumple con la condición, extrae el contenido del elemento <modelo>.
  5. Devuelve el texto del elemento <modelo> para cada impresora que cumple con la condición.
:)

for $impresora in doc("impresoras.xml")//impresora
where $impresora/@tipo = "láser"
return $impresora/modelo