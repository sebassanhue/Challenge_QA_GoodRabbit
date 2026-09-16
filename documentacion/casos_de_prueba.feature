Feature: Autenticación de usuarios en Dashboard Web

# Flujo Feliz
  Scenario: Inicio de sesión exitoso con credenciales válidas
    Given que el usuario se encuentra en la página de login
    When ingresa un usuario válido y una contraseña correcta
    And hace clic en el botón "Iniciar sesión"
    Then el sistema lo autentica correctamente
    And es redirigido a la vista principal del Dashboard

# CASOS 2, 3 y 4: Escenarios de borde y datos inválidos
  Scenario Outline: Intentos de inicio de sesión fallidos con datos inválidos
    Given que el usuario se encuentra en la página de login
    When ingresa el usuario "<usuario>" y la contraseña "<contrasena>"
    And hace clic en el botón "Iniciar sesión"
    Then el sistema rechaza el ingreso
    And muestra el mensaje de advertencia "<mensaje_esperado>"
    And el usuario permanece en la página de login

    Examples:
      | usuario         | contrasena      | mensaje_esperado       |
      | admin           | clave_equivocada| Credenciales inválidas |
      | usuario_falso   | admin123        | Credenciales inválidas |
      |                 |                 | Campos obligatorios    |
    
# CASO 5: Caso Falta de permisos
  Scenario: Intento de acceso a un módulo administrativo sin los permisos requeridos
    Given que el usuario ha iniciado sesión con una cuenta de rol estándar
    When intenta acceder a la sección de configuración o gestión de usuarios del Dashboard
    Then el sistema bloquea el acceso por restricciones de rol
    And muestra un mensaje indicando que no cuenta con los permisos necesarios