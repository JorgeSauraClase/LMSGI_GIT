(: consulta2.xq :)
(: Filtra los artistas cuyo año de nacimiento es menor a 1500 :)

(: 
  Este código XQuery realiza las siguientes acciones:

  1. Abre el documento XML llamado "artistas".
  2. Selecciona todos los elementos <artista> dentro del documento.
  3. Filtra los elementos <artista> para aquellos cuyo elemento <nacimiento> tiene un valor menor a 1500.
  4. Para cada artista que cumple con la condición, extrae el contenido del elemento <nombreCompleto>.
  5. Devuelve el texto del elemento <nombreCompleto> para cada artista que cumple con la condición.
:)

for $artista in doc("artistas.xml")//artista
where $artista/nacimiento < 1500
return $artista/nombreCompleto/text()
