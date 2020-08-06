  // agregar alumno javascript function
function add_member() {
	// iniciamos el proceso
	var url = 'agregar_registro.php';
	var method = 'POST';
	var params = 'nombres='+document.getElementById('nombres').value;
	params += '&apellidos='+document.getElementById('apellidos').value;
	params += '&tipo='+document.getElementById('tipo').value;
	params += '&dni='+document.getElementById('dni').value;
	var container_id = 'list_container' ;
	var loading_text = '<img src="images/fb_loading.gif">' ;
	// llamamos ajax function
	ajax (url, method, params, container_id, loading_text) ;
}

function add_datos() {
	// iniciamos el proceso
	var url = 'actualizar_datos.php';
	var method = 'POST';
	var params = 'nombres_completos='+document.getElementById('nombres_completos').value;
	params += '&cargo='+document.getElementById('cargo').value;
	params += '&email='+document.getElementById('email').value;
	params += '&direccion='+document.getElementById('direccion').value;
	params += '&telefono='+document.getElementById('telefono').value;
	params += '&datos_emergencia='+document.getElementById('datos_emergencia').value;
	var container_id = 'resultado' ;
	var loading_text = '<img src="images/fb_loading.gif">' ;
	// llamamos ajax function
	actualizar_ajax (url, method, params, container_id, loading_text) ;
}

// ajax : basic function for using ajax easily
function ajax (url, method, params, container_id, loading_text) {


	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		  if(this.responseText == "ABIERTO")
		  {
					try { // For: chrome, firefox, safari, opera, yandex, ...
						xhr = new XMLHttpRequest();
					} catch(e) {
						try{ // for: IE6+
							xhr = new ActiveXObject("Microsoft.XMLHTTP");
						} catch(e1) { // if not supported or disabled
							alert("Not supported!");
						}
					}
					if(document.getElementById('nombres').value == "")
					{
						document.getElementById(container_id).innerHTML = "<h3 style='color: red;'>Algunos campos estan vacios.</h3>";
					}
					if(document.getElementById('apellidos').value == "")
					{
						document.getElementById(container_id).innerHTML = "<h3 style='color: red;'>Algunos campos estan vacios.</h3>";
					}
					if(document.getElementById('dni').value == "" )
					{
						document.getElementById(container_id).innerHTML = "<h3 style='color: red;'>Algunos campos estan vacios.</h3>";
					}
					
					else
					{
						xhr.onreadystatechange = function() {
							if(xhr.readyState == 4) { // when result is ready
								document.getElementById(container_id).innerHTML = "<h3 style='color: green;font-weight: bold;'>Registro Agregado Correctamente!.</h3>";
							} else { // waiting for result 
								document.getElementById(container_id).innerHTML = loading_text;
							}
							}
				xhr.open(method, url, true);
				xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
				xhr.send(params);
					}
		  }
		  else{
			document.getElementById(container_id).innerHTML = "<h3 style='color: red;'>Sistema Cerrado.</h3>";
		  }
		}
	  };
	  xhttp.open("GET", "estado.php", true);
	  xhttp.send();
   
	
}
// ajax : basic function for using ajax easily
function actualizar_ajax (url, method, params, container_id, loading_text) {
    try { // For: chrome, firefox, safari, opera, yandex, ...
    	xhr = new XMLHttpRequest();
    } catch(e) {
	    try{ // for: IE6+
	    	xhr = new ActiveXObject("Microsoft.XMLHTTP");
	    } catch(e1) { // if not supported or disabled
		    alert("Not supported!");
		}
	}
	if(document.getElementById('nombres_completos').value == "")
	{
		document.getElementById(container_id).innerHTML = "<h3 style='color: red;'>Algunos campos estan vacios.</h3>";
	}
	if(document.getElementById('email').value == "")
	{
		document.getElementById(container_id).innerHTML = "<h3 style='color: red;'>Algunos campos estan vacios.</h3>";
	}
	if(document.getElementById('datos_emergencia').value == "" )
	{
		document.getElementById(container_id).innerHTML = "<h3 style='color: red;'>Algunos campos estan vacios.</h3>";
	}
	
	else
	{
		xhr.onreadystatechange = function() {
			if(xhr.readyState == 4) { // when result is ready
				document.getElementById(container_id).innerHTML = "<h3 style='color: green;font-weight: bold;'>Registro Agregado Correctamente!.</h3>";
			} else { // waiting for result 
				document.getElementById(container_id).innerHTML = loading_text;
			}
			}
xhr.open(method, url, true);
xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
xhr.send(params);
	}
	
}