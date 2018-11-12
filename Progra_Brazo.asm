;------------------------------------------------------------------------------
;UNIVSERSIDAD DEL VALLE DE GUATEMALA
;INTEGRANTES
;Bryan Sanders		    17294
;Matias			    carnet
;
;FECHA: 10/11/2018
;Prgramacion para el control de cuatro distintos servos para el control de un 
;brazo de ________ como proyecto final del curso de Microcontroladores.
;Se implementa un ADC para el manejo analogo de datos para tener un control mas
;preciso del brazo al igual que comunicacion serial para comunicarse con una
;commputadora que estara reciviendo y mandando datos hacia el PIC16877 el cual
;mandara los datos necesarios para mover los distintos servos.

#include "p16f887.inc"

; CONFIG1
; __config 0xE0D4
 __CONFIG _CONFIG1, _FOSC_INTRC_NOCLKOUT & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOREN_OFF & _IESO_OFF & _FCMEN_OFF & _LVP_OFF
; CONFIG2
; __config 0xFFFF
 __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF

;----------------------------GENERAL_VARIABLES----------------------------------
 
GPR_VAR	    UDATA

RES_VECT CODE 0x0000	    ;VECTOR RESET
 GOTO	SETUP 
 
;------------------------------OSCCON_CONFIG------------------------------------
OSCCON_CONFIG:
    BANKSEL	OSCCON
    BSF		OSCCON, SCS	;SET INTERNAL OSCILLATOR FOR SYSTEM CLOCK
    BSF		OSCCON, HTS
    BSF		OSCCON, IRCF0	;SET OSCILATION TO 500 kHz
    BSF		OSCCON, IRCF1
    BCF		OSCCON, IRCF2
    RETURN
 
END