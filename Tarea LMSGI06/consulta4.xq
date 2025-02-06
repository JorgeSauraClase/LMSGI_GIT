(: consulta4.xq :)
(: Genera una lista HTML de artistas nacidos en España :)

(: 
  Este código XQuery realiza las siguientes acciones:

  1. Abre el documento XML llamado "artistas".
  2. Selecciona todos los elementos <artista> dentro del documento.
  3. Filtra los elementos <artista> para aquellos cuyo elemento <pais> tiene el valor "España".
  4. Para cada artista que cumple con la condición, extrae el contenido del elemento <nombreCompleto>.
  5. Genera un documento HTML que contiene una lista desordenada (<ul>) con un elemento de lista (<li>) para cada artista que cumple con la condición.
  6. Devuelve el documento HTML generado.
:)


let $html :=
  <html>
    <body>
      <ul>
        {
          for $artista in doc("artistas.xml")//artista
          where $artista/pais = "España"
          return <li>{ $artista/nombreCompleto/text() }</li>
        }
      </ul>
    </body>
  </html>
return $html
