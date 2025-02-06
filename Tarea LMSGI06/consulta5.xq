(: consulta5.xq :)
(: Cuenta los artistas cuyo año de nacimiento es menor a 1600 :)

(: 
  Este código XQuery realiza las siguientes acciones:

  1. Abre el documento XML llamado "artistas".
  2. Selecciona todos los elementos <artista> dentro del documento.
  3. Filtra los elementos <artista> para aquellos cuyo elemento <nacimiento> tiene un valor menor a 1600.
  4. Cuenta el número de elementos <artista> que cumplen con la condición.
  5. Devuelve el número de artistas que cumplen con la condición.
:)

count(doc("artistas.xml")//artista[nacimiento < 1600])


