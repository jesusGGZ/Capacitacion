// se llama a express
const express = require('express');
const app = express();

// se llama de forma global al modulo http
const server = require('http').Server(app);

// Se asigna el nombre del host y el puerto a utilizar
const hostname = '127.0.0.1';
const port = 1700;

// le indicas al servidor su nombre de host y puerto
server.listen(port, hostname, () => {
  // imprime en consola la ruta del servidor  
  console.log('Servidor esta corriendo en http://'+ hostname +':'+ port +'/');
  // indica el puerto en uso
  console.log('\n' + 'El puesto usado es el: ' + port);
});
