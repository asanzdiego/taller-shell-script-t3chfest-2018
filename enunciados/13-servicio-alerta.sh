#! /bin/bash

# script que arraca, para, relanza y nos muestra el estado de 'alerta'

function ayuda() {
cat << DESCRIPCION_AYUDA
SYNOPIS
    $0 start|stop|restart|status

DESCRIPCIÓN
    Muestra que arraca, para, relanza y nos muestra el estado de 'alerta'.

CÓDIGOS DE RETORNO
    0 Si no hay ningún error.
DESCRIPCION_AYUDA
}

DAEMON=12-alerta
PIDFILE=/tmp/$DAEMON.pid

function do_start() {
    # ¿cómo sabemos que un fichero existe?
    if [ $PIDFILE ]; then
         echo "El proceso ya se está ejecutando."
         exit 0;
    fi
    # ¿cómo ejecutamos en segundo plano?
    # ¿cómo recuperamos el PID del proceso ejecutandose en segundo plano?
    PID=
    echo $PID > $PIDFILE
    echo "Ejecutandose..."
}

function do_stop() {
    # ¿cómo sabemos que un fichero existe?
    if [ $PIDFILE ]; then
        kill -9 `cat $PIDFILE`
        rm $PIDFILE
    fi
    echo "Parado."
}

function do_restart() {
    do_stop
    do_start
}

function do_status() {
    # ¿cómo sabemos que un fichero existe?
    if [ $PIDFILE ]; then
        echo "Ejecutandose..."
    else
        echo "Parado."
    fi
}

if [ "$1" == "-h" -o "$1" == "--help" ]; then
    ayuda
    exit 0
fi

case $1 in
    start)
        do_start ;;
    stop)
        do_stop ;;
    restart)
        do_restart ;;
    status)
        do_status ;;
    *)
        echo "Parámetro '$1' incorrecto." ;;
esac
