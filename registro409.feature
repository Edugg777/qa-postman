Feature: Registro de Usuario (US-01)
Como un nuevo visitante del Club de Tenis
Quiero que el sistema me avise cuando introduzca un email ya en uso
Para poder saber si tengo un usuario ya creado

Scenario: Error al utilizar un email ya en uso
Given el usuario se encuentra en la página "http://localhost:8080/register"
When  el usuario introduce "nombre" en el campo "nombre"
And el usuario introduce "email" en el campo "email"
And el usuario introduce "contraseña" en el campo "contraseña"
And el usuario introduce "60000000" en el campo "teléfono"
And el usuario hace clic en el casillero "Crear Cuenta"
Then el sistema debe de mantener los datos introducidos por el usuario
And debe de mostrar la notificacion roja con el texto "Ya existe una cuenta con ese email"
