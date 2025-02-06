(: consulta1.xq :)
(: Extrae el nombre y el país de todos los artistas :)

(: 
  Este código XQuery realiza las siguientes acciones:

  1. Abre el documento XML llamado "artistas".
  2. Selecciona todos los elementos <artista> dentro del documento.
  3. Para cada elemento <artista> encontrado, extrae el contenido de los elementos <nombreCompleto> y <pais>.
  4. Crea un nuevo elemento <artista> que contiene los elementos <nombreCompleto> y <pais> con los valores extraídos.
  5. Devuelve el nuevo elemento <artista> para cada artista en el documento original.
:)

for $artista in doc("artistas.xml")//artista
return 
  <artista>
    <nombreCompleto>{ $artista/nombreCompleto/text() }</nombreCompleto>
    <pais>{ $artista/pais/text() }</pais>
  </artista>
