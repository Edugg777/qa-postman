Feature: Registro de Usuario (US-01)
Como un nuevo visitante del CLub de Tenis 
Quiero que el sistema me avise si introduzco mal mis datos
Para poder corregirlos antes de enviar el formulario

Scenario: Error al dejar campos obligatorios vacíos (Faltan Datos)
Given el usuario se encuentra en la página "http://localhost:8080/register"
When el usuario introduce el  "nombre" en el campo "nombre"
And el usuario deja vacío el campo "email"
And el usuario introduce una "contraseña" en el campo "contraseña"
And el usuario haga clic en el botón de "Crear Cuenta"
Then el sistema no debe redirigir a otra página 
And el sistema deberá resaltar el campo "email" en rojo 
And debe mostrar el mensaje "El email es obligatorio" debajo del campo "email"

Scenario: Error al introducir un formato de dat inválido (Validación estricta)
Given el usuario se encuentra en la página "/register"
When el usuario introduce todos sus datos correctamente
But el usuario introduce "123" en el campo "telefono"
And hace clic en el botón "Crear Cuenta"
Then el sistema debe mostrar un mensaje de "El teléfono debe tener 9 dígitos" debajo del campo "telefono"
