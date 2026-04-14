Feature: Registro de Usuario (US-01)

Como nuevo visitante del Club de Tenis
Quiero poder crearme una cuenta 
Para poder acceder al panel y reservar pistas

Scenario: Registro exitoso con datos correctos (Código 201)
Given el usuario se encuentra en la página "http://localhost:8080/register"
When el usuario introduce el "email"
And el usuario introduce el "nombre"
And el usuario introduce la "password"
And el usuario introduce el "telefono"
And el usuario hace clic en el botón "Crear Cuenta"
Then el sistema debe de mostrar un mensaje de éxito con el texto "El usuario se ha creado correctamente"
And el sistema debe redirigir al usuario a la página de "/login"

