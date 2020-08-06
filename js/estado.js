// ajax : basic function for using ajax easily
function actualizar(){location.reload(true);}

function encender_server() {
	var container_id = 'list_container' ;
	var xhttp2 = new XMLHttpRequest();
  xhttp2.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
		document.getElementById(container_id).innerHTML = "<h3 style='color: green;'>Sistema Actualizado,recargando en 3 segundos.</h3>";
		setInterval("actualizar()",3000);
    }
  };
  xhttp2.open("GET", "actualizar_estado.php", true);
  xhttp2.send();
}

