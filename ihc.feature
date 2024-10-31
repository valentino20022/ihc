Feature: Inicio de sesión rápido y seguro

  # Historia de usuario: EP01/HU01
  # Título: Autenticación mediante reconocimiento facial
  # Descripción: Como usuario, quiero iniciar sesión usando reconocimiento facial para tener una autenticación ágil y protegida.
  # Epic ID relacionado: EP01

  Scenario: Autenticación exitosa mediante reconocimiento facial
    Given el usuario accede a la app
    And se encuentra en la pantalla de inicio de sesión
    When el usuario selecciona la opción de 'Autenticación rápida'
    Then la app toma una captura del rostro del usuario
    And el sistema le muestra un mensaje de bienvenida

Feature: Restablecer contraseña fácilmente

  # Historia de usuario: EP01/HU02
  # Título: Restablecer contraseña fácilmente
  # Descripción: Como usuario, quiero poder restablecer mi contraseña de manera sencilla para mantener la seguridad de mi cuenta y facilitar el acceso si la olvido.
  # Epic ID relacionado: EP01

  Scenario: Solicitud de cambio de contraseña
    Given el usuario está en la pantalla de inicio de sesión
    And selecciona la opción "¿Olvidaste tu contraseña?"
    When el sistema lo dirige a la página para restablecer la contraseña
    And el usuario pulsa en la opción de cambiar contraseña
    Then el sistema almacena la nueva contraseña ingresada
    And la app notifica que el cambio se ha realizado con éxito
    
Feature: Personalizar el perfil

  # Historia de usuario: EP01/HU03
  # Título: Configuración de perfil
  # Descripción: Como usuario, quiero poder modificar mi perfil y las preferencias de notificaciones para personalizar la experiencia en la app de acuerdo a mis gustos.
  # Epic ID relacionado: EP01

  Scenario: Configuración de perfil
    Given el usuario está en la página "Mi perfil"
    And selecciona la opción “Configurar mi perfil”
    When el usuario termina de hacer las modificaciones a su perfil
    And pulsa el botón de guardar
    Then el sistema actualiza los cambios realizados por el usuario

Feature: Transferencias seguras

  # Historia de usuario: EP02/HU04
  # Título: Transferencia a cuenta de ahorros
  # Descripción: Como usuario, quiero hacer transferencias utilizando métodos seguros para proteger mi cuenta de ahorros.
  # Epic ID relacionado: EP02

  Scenario: Transferencia a cuenta de ahorros
    Given el usuario está en la sección de pagos y transferencias
    And selecciona un método de pago confiable
    When el sistema muestra los campos a completar para hacer la transferencia
    And el usuario completa todos los campos necesarios
    Then la app valida los datos para realizar la transferencia a la cuenta de ahorros

Feature: Sincronización de cuentas bancarias

  # Historia de usuario: EP02/HU05
  # Título: Agregar múltiples cuentas bancarias
  # Descripción: Como usuario, quiero agregar y sincronizar varias cuentas bancarias con la aplicación para tener una gestión integral de mis finanzas.
  # Epic ID relacionado: EP02

  Scenario: Agregar múltiples cuentas bancarias
    Given el usuario está en la pantalla de agregar una nueva cuenta bancaria
    And selecciona su banco y el tipo de cuenta desde una lista
    And el sistema solicita los datos necesarios
    When el usuario completa los campos requeridos
    Then el sistema registra la nueva cuenta bancaria

Feature: Desvincular cuentas bancarias

  # Historia de usuario: EP02/HU06
  # Título: Solicitud para desvincular cuenta
  # Descripción: Como usuario, quiero tener la opción de desvincular una cuenta bancaria que ya no utilizo para mantener un control sobre las cuentas asociadas a mi perfil.
  # Epic ID relacionado: EP02

  Scenario: Solicitud para desvincular cuenta
    Given el usuario está en la pantalla de gestión de cuentas bancarias
    And selecciona la opción de desvincular una cuenta
    When el sistema muestra la lista de cuentas vinculadas
    Then el usuario puede elegir la cuenta que desea desvincular

Feature: Informes de gastos y ahorros por correo

  # Historia de usuario: EP03/HU7
  # Título: Solicitud de informes de gastos y ahorros por correo
  # Descripción: Como usuario, quiero recibir informes de mis gastos y ahorros por correo electrónico para organizar mejor mis finanzas.
  # Epic ID relacionado: EP03

  Scenario: Solicitud de informes de gastos y ahorros por correo
    Given el usuario ha activado la opción en la configuración de la app
    And el sistema genera un informe de gastos y ahorros
    When el sistema envía el informe al correo del usuario
    Then el usuario recibe el informe en su correo de manera satisfactoria

Feature: Alertas de saldo bajo

  # Historia de usuario: EP03/HU8
  # Título: El usuario configura alertas de saldo bajo
  # Descripción: Como usuario, quiero recibir alertas cuando mi saldo bancario baja de un nivel predeterminado para evitar sobregiros y administrar mejor mi dinero disponible.
  # Epic ID relacionado: EP03

  Scenario: El usuario configura alertas de saldo bajo
    Given el usuario ha definido un saldo mínimo en la app
    And el saldo bancario baja por debajo de ese nivel
    When el sistema envía una alerta al usuario
    Then el usuario recibe una notificación en la app y/o por correo electrónico

Feature: Metas de ahorro personalizadas

  # Historia de usuario: EP04/HU9
  # Título: Establecimiento de metas de ahorro personalizadas
  # Descripción: Como usuario, quiero establecer metas de ahorro personalizadas y recibir notificaciones para monitorear mi progreso financiero.
  # Epic ID relacionado: EP04

  Scenario: Establecimiento de metas de ahorro personalizadas
    Given el usuario accede a la sección de metas de ahorro en la app
    When el usuario establece una nueva meta de ahorro y define los parámetros
    Then el sistema guarda la meta
    And el sistema envía notificaciones periódicas sobre el progreso

Feature: Acceso a calendario financiero

  # Historia de usuario: EP04/HU10
  # Título: Acceso a un calendario financiero
  # Descripción: Como usuario, quiero acceder a un calendario financiero para organizar mejor mis pagos y obligaciones.
  # Epic ID relacionado: EP04

  Scenario: Acceso a un calendario financiero
    Given el usuario ha iniciado sesión en la app
    And accede a la sección de calendario
    When el sistema muestra un calendario con todas las fechas relevantes de pagos y obligaciones financieras
    Then el usuario puede organizar mejor sus compromisos financieros
