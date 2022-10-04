# i3
# Configuracion de i3mv lo mas automatizado posible

1. Ejecutar el script "install.sh" (En caso de querer instalar programas adicionales, ejecutar también postinstall.sh)
2. Reiniciar la pc!

Una vez realizadas las configuraciones antes nombradas:
  - si quiero cambiar el fondo de pantalla voy a tener que agregar la siguiente linea en el archivo de configuracion de i3, ubicado en: .config/i3/config, le agregamos con algun editor de texto: exec feh --bg-scale [ruta-imagen]
  - si quiero cambiar el fondo del inicio de sesion, debo configurar el archivo: /etc/lightdm/light-gtk-greeter.config. Una vez ubicado, modificar la fila al final llamada como: background=[ruta-imagen]. ACLARACION: la imagen debe encontrarse en /usr/share/backgrounds sino no va a surgir efecto.
