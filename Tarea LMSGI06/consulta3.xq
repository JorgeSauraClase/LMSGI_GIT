(: consulta3.xq :)
(: Busca artistas que no tengan año de fallecimiento registrado :)

(: 
  Este código XQuery realiza las siguientes acciones:

  1. Abre el documento XML llamado "artistas".
  2. Selecciona todos los elementos <artista> dentro del documento.
  3. Filtra los elementos <artista> para aquellos que no tienen un elemento <fallecimiento>.
  4. Para cada artista que cumple con la condición, extrae el contenido del elemento <nombreCompleto>.
  5. Devuelve el texto del elemento <nombreCompleto> para cada artista que cumple con la condición.
:)

for $artista in doc("artistas.xml")//artista
where not($artista/fallecimiento)
return $artista/nombreCompleto
