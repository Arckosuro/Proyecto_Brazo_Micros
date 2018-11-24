MANUAL DEL USUARIO

BRAZO CON PINZA CONTROLADO POR 4 SERVOS.

El brazo esta compuesto de cuatro servos los cuales mediante dos joysticks y un PIC 16F887, son operables. Se recomienda descargar el
documento de orientación de los pins para un PIC 16F887. 
Este se puede descargar desde la pagina http://ww1.microchip.com/downloads/en/devicedoc/41291d.pdf. 

Setup del circuito del PIC 16F887 (NO CERRAR EL CIRCUITO HASTA EL ULTIMO PASO):
  1. Colocar sobre la cama ajustable el microcontrolador de tal manera que el indentura circular este orientada con la palanca de la cama.
  2. Desde la indentura circular el se deben conectar un cable macho/hembra desde la salida del pin del Joystick nombrada, VRX hacia el 
  pin RA0 y el VRY en el RA1. Para el otro joystick, los pins VRX y VRY se conectan hacia los pins RA2 y RA3, respectivamente.
  3. Los pins de salida de GND y +5V deben ir a una respectiva fuente de 5 V y la tierra del circuito.
  4. Conectar los VDD (+5 V) y VSS (GND) del microcontrolador.
  5. Para los distintos servos se deben conectar hacia la entrada naranja. Conectar un cable macho/macho del pin:
        A) RB0 hacia el servo de la base
        B) RB1 hacia el servo del costado derecho
        C) RB2 haccia el servo de la garra  
        D) RB3 hacia el servo del costado izquierdo.
  6. Conectar las entradas rojas y cafes de los servos a la fuente de 5 volteos y la tierra del circuito, respectivamente.
  7. Cerrar el circuito al conectar el circuito a la fuente de poder y tierra. 
